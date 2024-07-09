#include "webapi.h"
#include <QUuid>
#include <QRegularExpression>
#include <QString>
#include <QStringList>
Webapi::Webapi(QObject *parent)
{
    this->setParent(parent);
    // 数组清空
    groupID.clear();
    deviceID.clear();
    deviceNumber.clear();

    timer = new QTimer();
    connect(timer, SIGNAL(timeout()), this, SLOT(onTimerTimeOut()));
    networkAccessManager = new QNetworkAccessManager(this);

    orgURL = "https://cloud.alientek.com/api/orgs";//原子云特定网址

    api_token = "9fca5fe08c9549529c9b5d82b326695a";//原子云apitoken信息

    // 获取账号机构列表
    getOrgURL();

    QUuid uuid = QUuid::createUuid();
    random_token = uuid.toString();

    webSocket = new QWebSocket();
    // 需要加一些安全配置才能访问https
    QSslConfiguration config;
    config.setPeerVerifyMode(QSslSocket::VerifyNone);
    config.setProtocol(QSsl::TlsV1SslV3);
    webSocket->setSslConfiguration(config);
     qDebug() << "OpenSSL支持情况:" << QSslSocket::supportsSsl();//确认QT是否支持
     qDebug()<<"QSslSocket="<<QSslSocket::sslLibraryBuildVersionString();//Qt所需版本
    connect(webSocket, SIGNAL(connected()),
            this, SLOT(webSocketConnected()));
    connect(webSocket, SIGNAL(binaryMessageReceived(QByteArray)),
            this, SLOT(onBinaryMessageReceived(QByteArray)));

}

Webapi::~Webapi()
{
    delete timer;
    delete webSocket;
    webSocket = nullptr;
}

void Webapi::getOrgURL()
{
    getDataFromWeb(QUrl(orgURL));
}

// 获取设备分组列表
void Webapi::getGroupListUrl()
{
    getDataFromWeb(QUrl(groupListUrl));
}

// 获取设备的信息
void Webapi::getDevOfGroupUrl()
{
    getDataFromWeb(QUrl(devOfGroupUrl));
}

//获取设备连接状态
void Webapi::getConStateUrl()
{
    getDataFromWeb(QUrl(conStateUrl));
}

// 从云服务器获取数据

void Webapi::getDataFromWeb(QUrl url)
{
    // 网络请求
    QNetworkRequest networkRequest;

    // 需要加一些安全配置才能访问https
    QSslConfiguration config;
    config.setPeerVerifyMode(QSslSocket::VerifyNone);
    config.setProtocol(QSsl::TlsV1SslV3);
    networkRequest.setSslConfiguration(config);
    // 设置访问的地址
    networkRequest.setUrl(url);

    // 网络响应
    networkRequest.setHeader(QNetworkRequest::ContentTypeHeader,
                             "application/json;charset=UTF-8");

    //参数二为原子云帐号的token信息,填写自己的
    networkRequest.setRawHeader("token", api_token.toLatin1());

    QNetworkReply *newReply =
            networkAccessManager->get(networkRequest);
    connect(newReply, SIGNAL(finished()),
            this, SLOT(replyFinished()));
    connect(newReply, SIGNAL(readyRead()),
            this, SLOT(readyReadData()));

}
void Webapi::replyFinished()
{
    QNetworkReply *reply = (QNetworkReply *)sender();

    if (reply->url() == QUrl(orgURL)) {
        // 设备分组列表ID
        getID(dataString, reply);
    }

    if (reply->url() == QUrl(groupListUrl)) {
        //列表ID
        getID(dataString, reply);

        // 获取到组ID再开启定时器
        if (!timer->isActive())
            timer->start(2000);
    }

    //设备的信息
    if (reply->url() == QUrl(devOfGroupUrl)) {
        getID(dataString, reply);
        getNumber(dataString);
        getName(dataString);
    }

    // 设备的连接状态
    if (reply->url() == QUrl(conStateUrl)) {
        getConnectState(dataString);
    }

    reply->deleteLater();
    reply = nullptr;
}
void Webapi::readyReadData()//处理网络请求的响应数据
{
    QNetworkReply *reply = (QNetworkReply *)sender();
    QByteArray data = reply->readAll();
    dataString =  QString(data);
    qDebug()<<dataString<<endl;
}

// 获取ID，包括分组id，设备id
void Webapi::getID(QString data, QNetworkReply *reply)
{
    // 多个匹配，因为可能有多个合适的字段
    QRegularExpression pattern("\"id\":(\\d+)");

    QRegularExpressionMatchIterator i = pattern.globalMatch(data);
    while (i.hasNext()) {
        QRegularExpressionMatch match = i.next();
        if (match.hasMatch()) {
            if (reply->url() == QUrl(orgURL)) {
                org_id =  match.captured(1);
                groupListUrl = "https://cloud.alientek.com/api/orgs/"
                        + org_id + "/grouplist";
                getGroupListUrl();
                 qDebug()<<"获取成功"<<endl;
                //Socket连接
                webSocket->open(QUrl(QString("wss://cloud.alientek.com/connection/%1/org/%2?token=%3")
                                     .arg(api_token).arg(org_id).arg(random_token)));
            }

            if (reply->url() == QUrl(groupListUrl)) {
                group_id = match.captured(1);
                // 存储组ID，再由定时器根据组的ID获取设备信息
                groupID.append(group_id);
                qDebug()<<"组ID:"<<group_id<<endl;

            }

            if (reply->url() == QUrl(devOfGroupUrl)) {
                device_id = match.captured(1);
                //存储设备ID,再由定时器根据设备的ID获取连接状态
                deviceID.append(device_id);
                qDebug()<<"设备ID:"<<device_id<<endl;
            }
        }
    }
}

void Webapi::getNumber(QString data)
{
    QRegularExpression pattern("\"number\":\"(\\d+)\"");
    QRegularExpressionMatchIterator i = pattern.globalMatch(data);
    while (i.hasNext()) {
        QRegularExpressionMatch match = i.next();
        if (match.hasMatch()) {
            device_number = match.captured(1);
            deviceNumber.append(device_number);
            qDebug()<<"设备编号："<<device_number<<endl;
        }
    }
}

void Webapi::getName(QString data)
{
    // 匹配中文字符，设备起名需要为中文
    QRegularExpression pattern("\"name\":\"([\u4e00-\u9fa5]*)");
    QRegularExpressionMatchIterator i = pattern.globalMatch(data);
    while (i.hasNext()) {
        QRegularExpressionMatch match = i.next();
        if (match.hasMatch()) {
            device_name = match.captured(1);
            deviceName.append(device_name);
            qDebug()<<"设备名称："<<device_name<<endl;
        }
    }
}

//获取设备的连接状态
void Webapi::getConnectState(QString data)
{
    QString pattern = "\"data\":\"(\\S*)\"";
    QRegularExpression regularExpression(pattern);
    QRegularExpressionMatch  match = regularExpression.match(data, 0);
    if(match.hasMatch()) {
        qDebug()<<"设备连接状态"<<match.captured(1);
        deviceConnectState.append(match.captured(1));
    }
}

void Webapi::webSocketConnected()
{
    qDebug()<<"webSocket连接原子云成功"<<endl;
}

void Webapi::onBinaryMessageReceived(QByteArray str)
{

    QString temp(str);
    //提取打印原子云上传过来的整个字符串证明数据收到
    if (temp.contains("M", Qt::CaseInsensitive)) {
           qDebug() << "找到包含'M'的字符串：" << temp;

       }
    //对所需的各个数据进行捕获提取
    parseDatathree(temp);
    parseDatatwo(temp);
    parseDatatwotwo(temp);
    parseDataone(temp);
    parseDatafour(temp);
    parseDatatwofour(temp);
    parseDatafive(temp);
    parseDatasix(temp);
    parseDataseven(temp);
    parseDataeight(temp);

    if (temp.contains("online")) {
        for (int i = 0; i < deviceNumber.count() ; i++) {
            if (temp.contains(deviceNumber[i])) {
                 //发送设备在线信号
                emit deviceStateChanged(deviceName[i] + "|在线");
                qDebug()<<deviceName[i] + "|在线"<<endl;
                break;
            }
        }
    }
}

//延时函数
void Webapi::sleep(double second)
{
    usleep(second * 1000000);
}

void Webapi::onTimerTimeOut()
{
    static int i = 0;
    if (i < groupID.count()) {
        //获取分组下的设备列表
        devOfGroupUrl = "https://cloud.alientek.com/api/orgs/"
                + org_id + "/groups/"
                + groupID[i] + "/devices";
        dataString.clear();
        getDevOfGroupUrl();
    } else if (i >= groupID.count()
               && i < groupID.count() + deviceID.count() ) {
        timer->start(1000);
        conStateUrl = "https://cloud.alientek.com/api/orgs/"
                + org_id + "/devicestate/"
                + deviceID[i - groupID.count()];
        getConStateUrl();

    } else {
        // 订阅设备的消息
        for (int j = 0; j < deviceNumber.count(); j++) {
            QByteArray cmd;
            cmd[0] = 0x01;
            sendCmd(deviceNumber[j], cmd);
        }

        timer->stop();
    }

    i++;
}

// 订阅指定设备的消息，cmd = 0x01
void Webapi::sendCmd(QString number, QByteArray cmd)
{
    QStringList list = number.split("");
    for (int i = 0; i < list.count(); i++) {
        if (!list[i].isEmpty()) {
            cmd.append(list[i]);
        }
    }

    webSocket->sendBinaryMessage(cmd);
}

//发送消息到指定设备，cmd = 0x03
void Webapi::sendCmdMessage(QString number,
                            QByteArray cmd, QString message)
{
    QStringList list = number.split("");
    for (int i = 0; i < list.count(); i++) {
        if (!list[i].isEmpty()) {
            cmd.append(list[i]);
        }
    }

    cmd.append(message);

    webSocket->sendBinaryMessage(cmd);
}

void Webapi::whichDeviceNameSendCmd(QString name,
                                    QString message) {

    for (int i = 0; i < deviceName.count(); i++) {
        if (name ==  deviceName[i]) {
            QByteArray cmd;
            cmd[0] = 0x03;
            sendCmdMessage(deviceNumber[i], cmd, message);
            break;
        }
    }
}
//数据捕获和发送函数
int Webapi::parseDatathree(QString &buf) {
        QRegularExpression re("M(\\d+)"); // 匹配 "M" 后面的一个或多个数字
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0; // 使用 newValue 而不是局部变量 lightValue
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();// 捕获第一个捕获组并转换数字部分
            emit sourcesmogvalue(newValue);
            if (newValue != this->smogValue) { // 使用 this 指针访问类成员变量
                this->smogValue = newValue; // 更新烟雾值
                qDebug() << "New smog value:" << smogValue;
                emit smogValueChanged(newValue); // 发出信号通知值已改变

            }
        }
         return this->smogValue;
}
int Webapi::parseDatatwo(QString &buf) {
        QRegularExpression re("T(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            temperaturevalues.append(newValue);
            emit sourcetemperatureValue(newValue);
            if (newValue != this->temperatureValue) {
                this->temperatureValue = newValue;
                qDebug() << "New temperature value:" << temperatureValue;
                emit temperatureValueChanged(newValue);
            }
        }
         return this->temperatureValue;
}
void Webapi::parseDatatwotwo(QString &buf) {
        QRegularExpression re("E(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            temperaturetwovalues.append(newValue);
            }
        int minSize = qMin(temperaturevalues.size(), temperaturetwovalues.size());
        for (int i = 0; i < minSize; ++i) {
            int result = temperaturevalues.at(i) - temperaturetwovalues.at(i);
           emit wendujieguo(result);
            qDebug() << "数量" << i << "：相减结果" << result;
        }
        if (temperaturevalues.size() > 10 && temperaturetwovalues.size() > 10) {
                temperaturevalues.clear();
                temperaturetwovalues.clear();
        }
}

int Webapi::parseDataone(QString &buf) {
        QRegularExpression re("L(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            emit sourcelightValue(newValue);
            if (newValue != this->lightValue) {
                this->lightValue = newValue;
                qDebug() << "New light value:" << lightValue;
                emit lightValueChanged(newValue);
            }
        }
         return this->lightValue;
  }
int Webapi::parseDatafour(QString &buf) {
        QRegularExpression re("H(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            emit sourcehumidityValue(newValue);
            humidityvalues.append(newValue);
            if (newValue != this->humidityValue) {
                this->humidityValue = newValue;
                 qDebug() << "New humidity value:" << humidityValue;
                emit humidityValueChanged(newValue);

            }
        }
         return this->humidityValue;
}
void Webapi::parseDatatwofour(QString &buf) {
        QRegularExpression re("U(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            humiditytwovalues.append(newValue);
           }
        int minSize = qMin(humidityvalues.size(), humiditytwovalues.size());
        for (int i = 0; i < minSize; ++i) {
            int result = humidityvalues.at(i) - humiditytwovalues.at(i);
           emit shidujieguo(result);
            qDebug() << "数量2" << i << ": 相减结果二" << result;
        }
        if (humiditytwovalues.size() > 10 && humidityvalues.size() > 10) {

               humiditytwovalues.clear();
                humidityvalues.clear();
        }
}
int Webapi::parseDatafive(QString &buf) {
        QRegularExpression re("A(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            emit sourcepollutedairValue(newValue);
            if (newValue != this->pollutedairValue) {
                this->pollutedairValue = newValue;
                 qDebug() << "New pollutedair value:" << pollutedairValue;
                emit pollutedairValueChanged(newValue);

            }
        }
         return this->pollutedairValue;
}
int Webapi::parseDatasix(QString &buf) {
        QRegularExpression re("C(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            emit sourceCH4Value(newValue);
            if (newValue != this->CH4Value) {
                this->CH4Value = newValue;
                 qDebug() << "New CH4 value:" << CH4Value;
                emit CH4ValueChanged(newValue);

            }
        }
         return this->CH4Value;
}
int Webapi::parseDataseven(QString &buf) {
        QRegularExpression re("D(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            emit sourcealcoholValue(newValue);
            if (newValue != this->alcoholValue) {
                this->alcoholValue = newValue;
                 qDebug() << "New alcohol value:" << alcoholValue;
                emit alcoholValueChanged(newValue);

            }
        }
         return this->alcoholValue;
}
int Webapi::parseDataeight(QString &buf) {
        QRegularExpression re("B(\\d+)");
        QRegularExpressionMatch match = re.match(buf);
        int newValue = 0;
        if (match.hasMatch()) {
            newValue = match.captured(1).toInt();
            emit sourcepetroleumValue(newValue);
            if (newValue != this->petroleumValue) {
                this->petroleumValue = newValue;
                 qDebug() << "New alcohol value:" << petroleumValue;
                emit petroleumValueChanged(newValue);

            }
        }
         return this->petroleumValue;
}
