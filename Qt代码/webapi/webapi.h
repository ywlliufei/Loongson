#ifndef WEBAPI_H
#define WEBAPI_H

#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QWebSocket>
#include <unistd.h>
#include <QTimer>
#include <QVector>
class Webapi : public QObject
{
    Q_OBJECT

public:
    Webapi(QObject *parent = nullptr);
    ~Webapi();

private:

    QTimer *timer;
    QString api_token;
    QString random_token;

    void sleep(double second);

    QVector<QString>groupID;
    QVector<QString>deviceID;
    QVector<QString>deviceNumber;
    QVector<QString>deviceName;
    QVector<QString>deviceConnectState;

    QVector<int> humidityvalues;
    QVector<int> humiditytwovalues;
    QVector<int> temperaturevalues;
    QVector<int> temperaturetwovalues;
    // HTTPS
    QNetworkAccessManager *networkAccessManager;
    //获取账号机构列表
    void getOrgURL();
    // 获取分组列表
    void getGroupListUrl();
    //获取分组列表下的设备
    void getDevOfGroupUrl();
    // 获取设备的连接状态
    void getConStateUrl();
    // 返回的字符串信息
    QString dataString;
    // 账号机构列表id
    QString org_id;
    // 分组id
    QString group_id;
    // 设备id
    QString device_id;
    // 设备编号
    QString device_number;
    // 设备名字
    QString device_name;
    //原子云连接URL
    QString orgURL;
    // 设备分组URL
    QString groupListUrl;
    // 分组下的URL
    QString devOfGroupUrl;
    // 连接状态URL
    QString conStateUrl;
    // 网络返回的数据
    void getDataFromWeb(QUrl);
    // 获取id
    void getID(QString, QNetworkReply *reply);
    // 获取设备编号
    void getNumber(QString data);
    // 获取设备名字
    void getName(QString data);
    // 获取设备的连接状态
    void getConnectState(QString data);
    // WebSocket
    QWebSocket *webSocket;

    // 发送命令/发送命令+消息
    void sendCmd(QString number, QByteArray cmd);
    void sendCmdMessage(QString number, QByteArray cmd, QString message);
    //常数变量
     int smogValue;
     int temperatureValue;
     int lightValue;
     int humidityValue;
     int pollutedairValue;
     int CH4Value;
     int alcoholValue;
     int petroleumValue;

private slots:

    void onTimerTimeOut();
    // HTTPS
    void replyFinished();
    void readyReadData();

    // WebSocket
    void webSocketConnected();
    void onBinaryMessageReceived(QByteArray);
    //解析数据和上传数据
    int parseDatathree(QString &buf);
    int parseDatatwo(QString &buf);
    void parseDatatwotwo(QString &buf);
    int parseDataone(QString &buf);
     int parseDatafour(QString &buf);
     void parseDatatwofour(QString &buf);
     int parseDatafive(QString &buf);
     int parseDatasix(QString &buf);
     int parseDataseven(QString &buf);
     int parseDataeight(QString &buf);
public:
    void whichDeviceNameSendCmd(QString name, QString message);

signals:
    //数据上传信号
    void deviceStateChanged(QString deviceState);
    void temperatureValueChanged(int newValue);
    void sourcetemperatureValue(int newValue);
    void smogValueChanged(int newValue);
    void sourcesmogvalue(int newValue);
    void sourcelightValue(int newValue);
    void lightValueChanged(int newValue);
    void humidityValueChanged(int newValue);
    void sourcehumidityValue(int newvalue);
    void sourcepollutedairValue(int newvalue);
    void pollutedairValueChanged(int newValue);
    void sourceCH4Value(int newvalue);
    void CH4ValueChanged(int newValue);
    void sourcealcoholValue(int newvalue);
    void alcoholValueChanged(int newValue);
    void sourcepetroleumValue(int newvalue);
    void petroleumValueChanged(int newValue);
    void wendujieguo(int result2);
    void shidujieguo(int result1);
};
#endif // WEBAPI_H
