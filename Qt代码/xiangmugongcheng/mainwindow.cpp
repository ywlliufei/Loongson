#include "mainwindow.h"
#include <QDebug>
#include "../shujujiemian/mainwindowtwo.h"
#include "../shujujiemian/glowtext.h"
#include "../webapi/webapi.h"
#include "ChartWindow.h"
#include "TableDialog.h"
#include "ChartWindowtwo.h"
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{


    // 界面布局
    layoutInit();

    //各基类
    webapi = new Webapi(this);
 mainwindowtwo = new MainWindowTwo(this);
 chartwindow=new ChartWindow(this);
 charwindowtwo=new ChartWindowtwo(this);
 table=new TableDialog(this);

//应用项目与槽连接
//smog
 connect(webapi, SIGNAL(smogValueChanged(int)),
         mainwindowtwo, SLOT(getSmogData(int)));
 connect(webapi, SIGNAL(smogValueChanged(int)),
         this, SLOT(updateSmogvalue(int)));
 connect(webapi, SIGNAL(sourcesmogvalue(int)),
        chartwindow, SLOT(updateChartOne(int)));
 connect(webapi, SIGNAL(sourcesmogvalue(int)),
        table, SLOT(updateTableOne(int)));
 //temperature
 connect(webapi, SIGNAL(temperatureValueChanged(int)),
         mainwindowtwo, SLOT(getTemperatureData(int)));
 connect(webapi, SIGNAL(sourcetemperatureValue(int)),
        chartwindow, SLOT(updateChartTwo(int)));
 connect(webapi, SIGNAL(sourcetemperatureValue(int)),
        table, SLOT(updateTableThree(int)));
 connect(webapi, SIGNAL(wendujieguo(int)),
        this, SLOT(updatetemperatureresult(int)));
 //light
 connect(webapi, SIGNAL(lightValueChanged(int)),
         mainwindowtwo, SLOT(getLightData(int)));
 connect(webapi, SIGNAL(lightValueChanged(int)),
         this, SLOT(updateLightvalue(int)));
 connect(webapi, SIGNAL(sourcelightValue(int)),
         chartwindow, SLOT(updateChartFour(int)));
 connect(webapi, SIGNAL(sourcelightValue(int)),
         table, SLOT(updateTableTwo(int)));
 //humidity
 connect(webapi, SIGNAL(humidityValueChanged(int)),
         mainwindowtwo, SLOT(getHumidityData(int)));
 connect(webapi, SIGNAL(sourcehumidityValue(int)),
         chartwindow, SLOT(updateChartThree(int)));
 connect(webapi, SIGNAL(sourcehumidityValue(int)),
         table, SLOT(updateTableFour(int)));
 connect(webapi, SIGNAL(shidujieguo(int)),
         this, SLOT(updatehumidityresult(int)));
 //pollutedair
 connect(webapi, SIGNAL(pollutedairValueChanged(int)),
         mainwindowtwo, SLOT(getPollutedAirData(int)));
 connect(webapi, SIGNAL(sourcepollutedairValue(int)),
        charwindowtwo, SLOT(updateCharttwoOne(int)));
 //alcohol
 connect(webapi, SIGNAL(alcoholValueChanged(int)),
         mainwindowtwo, SLOT(getAlcoholData(int)));
 connect(webapi, SIGNAL(sourcealcoholValue(int)),
        charwindowtwo, SLOT(updateCharttwoTwo(int)));
 //CH4
 connect(webapi, SIGNAL(CH4ValueChanged(int)),
         mainwindowtwo, SLOT(getCH4Data(int)));
 connect(webapi, SIGNAL(sourceCH4Value(int)),
        charwindowtwo, SLOT(updateCharttwoThree(int)));
 //petroleum
 connect(webapi, SIGNAL(petroleumValueChanged(int)),
         mainwindowtwo, SLOT(getPetroleumData(int)));
 connect(webapi, SIGNAL(sourcepetroleumValue(int)),
        charwindowtwo, SLOT(updateCharttwoFour(int)));
 //显示界面返回
 connect(mainwindowtwo, SIGNAL(windowreturn()),
          this, SLOT(mainwindowflag1()));



 msgBox.setWindowTitle(u8"提示");
 msgBox.setStandardButtons(QMessageBox::Yes | QMessageBox::No);
 msgBox.setDefaultButton(QMessageBox::Yes);

    // 接收设备状态改变的心跳包，这里只检查在线的心跳包，
     // 离线的需要设备方主动发送离线信息
    connect(webapi, SIGNAL(deviceStateChanged(QString)),
            this, SLOT(deviceState(QString)));


    for (int i = 0; i < 3; i++)
        connect(switchButton[i], SIGNAL(toggled(bool)),
                this, SLOT(onToggled(bool)));


}

MainWindow::~MainWindow()
{
}

void MainWindow::layoutInit()
{
    // 主界面背景
    this->setGeometry(800, 600, 900, 600);
    this->setMinimumWidth(700);
    this->setMinimumHeight(450);
    this->setObjectName("xiangmugongcheng");

    for (int i = 0; i < 11; i++) {
        widget[i] = new QWidget();
        widget[i]->setObjectName(tr("widget%1")
                                 .arg(QString::number(i)));
    }

    for (int i = 0; i < 2; i++)
        vBoxLayout[i] = new QVBoxLayout();

    for (int i = 0; i < 6; i++)
        hBoxLayout[i] = new QHBoxLayout();

    for (int i = 0; i < 4; i++) {
        label[i] = new QLabel();
        label[i]->setObjectName(tr("label%1")
                                .arg(QString::number(i)));
    }
    label[4] = new QLabel();
    label[4]->setObjectName(tr("label%1")
                            .arg(QString::number(4)));
    label[4]->setAlignment(Qt::AlignCenter);
    label[4]->setStyleSheet("background-color:#FFFF00;color: #FF1515;");
    label[4]->setFixedSize(120, 40);
    QStringList list;
    list<<"强光"<<"弱光"<<"黑暗"<<"特殊情况"<<"温湿度情况"<<"显示数据"<<"环境数据分析"<<"环境历史数据"<<"气体数据分析";
    for (int i = 0; i < 5; i++) {
        pushButton[i] = new QPushButton();
        pushButton[i]->setFixedSize(100, 30);
        pushButton[i]->setText(list[i]);
        pushButton[i]->setCheckable(true);
        pushButton[i]->setFocusPolicy(Qt::NoFocus);
    }

    //下面为终端列表显示按钮
        for (int i = 5; i < 9; i++) {
            pushButton[i] = new QPushButton("进入下一个界面", this);
            pushButton[i]->setFixedSize(100, 40);
            pushButton[i]->setText(list[i]);
            pushButton[i]->setCheckable(true);
            pushButton[i]->setFocusPolicy(Qt::NoFocus);
            pushButton[i]->setStyleSheet("background-color: #00AA48;color: black;");//设置背景色与字体颜色

        }


connect(pushButton[5], &QPushButton::clicked, this, &MainWindow::onPushButtonClicked);
connect(pushButton[6], &QPushButton::clicked, this, &MainWindow::on_showChartButton_clicked);
connect(pushButton[7], &QPushButton::clicked, this, &MainWindow::on_showtableButton_clicked);
connect(pushButton[8], &QPushButton::clicked, this, &MainWindow::on_showcharttwoButton_clicked);


    widget[1]->setMaximumHeight(50);
    widget[2]->setMaximumHeight(25);
    widget[3]->setMaximumHeight(120);
    widget[4]->setMaximumHeight(30);
    widget[5]->setMaximumHeight(150);

    // 主布局
    vBoxLayout[0]->addWidget(widget[1]);
    vBoxLayout[0]->addWidget(widget[2]);
    vBoxLayout[0]->addWidget(widget[3]);
    vBoxLayout[0]->addWidget(widget[4]);
    vBoxLayout[0]->addWidget(widget[5]);

    vBoxLayout[0]->setContentsMargins(80, 52, 80, 50);

    //主界面采用垂直布局
    widget[0]->setLayout(vBoxLayout[0]);
    setCentralWidget(widget[0]);

    cloudPushButton = new QPushButton(this);
    cloudPushButton->move(15, 10);
    cloudPushButton->setMinimumHeight(42);
    cloudPushButton->setMinimumWidth(150);
    cloudPushButton->setFocusPolicy(Qt::NoFocus);
    cloudPushButton->setObjectName("cloudPushButton");
    cloudPushButton->setText("阳光男孩");
    QIcon icon(":/icons/qie(1).png");
    cloudPushButton->setIcon(icon);
    cloudPushButton->setIconSize(QSize(42, 42));

    hBoxLayout[0]->addWidget(label[0]);
    hBoxLayout[0]->setContentsMargins(300, 0, 0, 0);
    label[0]->setText("物流仓库");
    widget[1]->setLayout(hBoxLayout[0]);

    hBoxLayout[1]->addWidget(label[1]);
    label[1]->setText("您好请问你想了解什么数据");
    hBoxLayout[1]->setContentsMargins(250, 0, 0, 0);
    widget[2]->setLayout(hBoxLayout[1]);

    hBoxLayout[2]->addWidget(label[2]);
    hBoxLayout[2]->addWidget(pushButton[5]);
     hBoxLayout[2]->addWidget(pushButton[6]);
     hBoxLayout[2]->addWidget(pushButton[7]);
     hBoxLayout[2]->addWidget(pushButton[8]);
     hBoxLayout[2]->addWidget(label[4]);
    hBoxLayout[2]->setContentsMargins(0, 0, 0, 0);
    label[2]->setText("终端面板");
    label[4]->setText("火灾报警");
    widget[4]->setLayout(hBoxLayout[2]);

    vBoxLayout[1]->addWidget(widget[6]);
    vBoxLayout[1]->addWidget(widget[7]);
    vBoxLayout[1]->setContentsMargins(0, 0, 0, 0);
    widget[3]->setLayout(vBoxLayout[1]);

    hBoxLayout[3]->addWidget(label[3]);
    hBoxLayout[3]->setContentsMargins(300, 0, 0, 0);
    label[3]->setText("所处场景");
    widget[6]->setLayout(hBoxLayout[3]);

    hBoxLayout[4]->addWidget(pushButton[0]);
    hBoxLayout[4]->addWidget(pushButton[1]);
    hBoxLayout[4]->addWidget(pushButton[2]);
    hBoxLayout[4]->addWidget(pushButton[3]);
    hBoxLayout[4]->addWidget(pushButton[4]);
    hBoxLayout[4]->setAlignment(Qt::AlignLeft);
    hBoxLayout[4]->setSpacing(30);
    hBoxLayout[4]->setContentsMargins(30, 0, 0, 0);
    widget[7]->setLayout(hBoxLayout[4]);

    //终端面板
    listWidget = new QListWidget();
    listWidget->setFocusPolicy(Qt::NoFocus);
    listWidget->setMaximumHeight(150);
    listWidget->setVerticalScrollBarPolicy(
                Qt::ScrollBarAlwaysOff);
    listWidget->setHorizontalScrollBarPolicy(
                Qt::ScrollBarAlwaysOff);
    // 横向排布
    listWidget->setFlow(QListView::LeftToRight);
    hBoxLayout[5]->addWidget(listWidget);
    hBoxLayout[5]->setContentsMargins(0, 0, 0, 0);
    widget[5]->setLayout(hBoxLayout[5]);

    QStringList iconList;
    iconList<<":/icons/cangkusan.png"
           <<":/icons/cangkuyi.png"
          <<":/icons/cangkuer.png";
    QStringList localtionList;
    localtionList<<"节点一"<<"节点二"<<"节点三"<<"火灾报警";
    QStringList nameList;
    nameList<<"节点一|离线"<<"节点二|离线"<<"节点三|离线";


    for (int i = 0; i < 3; i++) {
        gridLayout[i] =  new QGridLayout();
        gridLayout[i]->setContentsMargins(0, 0, 0, 0);
    }
    for (int i = 0; i < 3; i++) {
        switchButton[i] =  new SwitchButton();
        switchButton[i]->setMaximumSize(50, 30);
    }


    for (int i = 0; i < 9; i++) {
        itemLabel[i] = new QLabel();
        itemLabel[i]->setMaximumSize(100, 75);
        itemLabel[i]->setScaledContents(true);
        itemLabel[i]->setAlignment(Qt::AlignCenter);
        itemLabel[i]->setObjectName(tr("itemLabel%1")
                                    .arg(QString::number(i)));
    }

    itemLabel[0]->setPixmap(QPixmap(iconList[0]));
    itemLabel[1]->setPixmap(QPixmap(iconList[1]));
    itemLabel[2]->setPixmap(QPixmap(iconList[2]));

    itemLabel[3]->setText(localtionList[0]);
    itemLabel[4]->setText(localtionList[1]);
    itemLabel[5]->setText(localtionList[2]);


    itemLabel[6]->setText(nameList[0]);
    itemLabel[7]->setText(nameList[1]);
    itemLabel[8]->setText(nameList[2]);

    gridLayout[0]->addWidget(itemLabel[0], 0, 0);
    gridLayout[0]->addWidget(itemLabel[3], 0, 1);
    gridLayout[0]->addWidget(itemLabel[6], 1, 0);
    gridLayout[0]->addWidget(switchButton[0], 1, 1);

    gridLayout[1]->addWidget(itemLabel[1], 0, 0);
    gridLayout[1]->addWidget(itemLabel[4], 0, 1);
    gridLayout[1]->addWidget(itemLabel[7], 1, 0);
    gridLayout[1]->addWidget(switchButton[1], 1, 1);

    gridLayout[2]->addWidget(itemLabel[2], 0, 0);
    gridLayout[2]->addWidget(itemLabel[5], 0, 1);
    gridLayout[2]->addWidget(itemLabel[8], 1, 0);
    gridLayout[2]->addWidget(switchButton[2], 1, 1);
    QListWidgetItem *listWidgetItem[3];

    for (int i = 0; i < 3; i++) {
        listWidgetItem[i] = new QListWidgetItem();
        listWidget->addItem(listWidgetItem[i]);
    }

    widget[8]->setLayout(gridLayout[0]);
    widget[9]->setLayout(gridLayout[1]);
    widget[10]->setLayout(gridLayout[2]);
    listWidget->setItemWidget(listWidget->item(0), widget[8]);
    listWidget->setItemWidget(listWidget->item(1), widget[9]);
    listWidget->setItemWidget(listWidget->item(2), widget[10]);
}

void MainWindow::onToggled(bool flag) {
    SwitchButton *bt = (SwitchButton *)sender();
    for (int i = 0; i < 3; i++) {
        if (bt == switchButton[i]) {
            QStringList list = itemLabel[i + 6]
                    ->text().split("|");
            QString message;
            if (flag)
                message = "OFF";
            else
                message = "ON";

            // 给原子云服务器发送指令
            webapi->whichDeviceNameSendCmd(list[0], message);
            break;
        }
    }
}


void MainWindow::deviceState(QString state)
{
    if (state.contains("节点一")) {
        itemLabel[6]->setText(state);
        itemLabel[6]->setStyleSheet("color:#f39800");
    } else if (state.contains("节点二")) {
        itemLabel[7]->setText(state);
        itemLabel[7]->setStyleSheet("color:#f39800");
    } else if (state.contains("节点三")) {
        itemLabel[8]->setText(state);
        itemLabel[8]->setStyleSheet("color:#f39800");
    }
}

void MainWindow::onPushButtonClicked()
{

       mainwindowtwo->show();
         this->hide();//隐藏目前的主窗口
    QTimer::singleShot(500, [this]() { changecolor(); });

}


void MainWindow::mainwindowflag1()
{
  this->show();
}

void MainWindow::changecolor()
{
   pushButton[5]->setStyleSheet("background-color: #00AA48;color: black;");//设置背景色与字体颜色
}

//以下为渐变色
void MainWindow::paintEvent(QPaintEvent *event) {
    QPainter painter(this);
    float hue = 60.0f - normalizedValue * 0.6f; // 映射到60（绿色）到0（红色）
    qDebug() << "hue值：" << hue;
    if (hue < 0.0f) hue = 0.0f; // 确保Hue不小于0
    if (hue < 10.0f) { hue = 0.0f;}
    if ( 10.0f<hue &&hue<30.0f) { hue = 25.0f;}
    if ( 30.0f<hue &&hue<50.0f) { hue = 45.0f;}
    if ( 50.0f<hue &&hue<90.0f) { hue = 60.0f;}
    // 饱和度Saturation和亮度Value设为固定值
    float saturation = 1.0f; // QColor的setHsvF使用浮点数
    float value = 1.0f;
    QColor color;
    color.setHsvF(hue / 360.0f, saturation, value); // 使用setHsvF来设置颜色


    // 设置画笔的笔刷为计算得到的颜色
    painter.setBrush(color);

    // 绘制一个圆形
    painter.drawEllipse(720, 400, 75, 75); // 在(620,300)位置绘制一个宽高都为100的圆
       }

//closeEvent: 确认退出对话框
void MainWindow::closeEvent(QCloseEvent *event)
{
    msgBox.setText(u8"确认退出程序？");
    mesbox_result = msgBox.exec();

    if(mesbox_result==QMessageBox::No)
    {
        event->ignore(); // 忽略退出信号，程序继续进行
    }
    else if(mesbox_result==QMessageBox::Yes)
    {
        event->accept(); // 接受退出信号，程序退出
    }
}
//场景显示槽函数
void MainWindow::updateLightvalue(int lightvalue)
{
  newlightvalue=lightvalue;
   qDebug() << "新的光照值" << newlightvalue;
   if(newlightvalue>100)
   {
     pushButton[0]->setChecked(true);
     pushButton[1]->setChecked(false);
     pushButton[2]->setChecked(false);
   }
   else if(10 <=newlightvalue && newlightvalue <= 100)
   {
     pushButton[0]->setChecked(false);
     pushButton[1]->setChecked(true);
     pushButton[2]->setChecked(false);
   }


   else if(newlightvalue<10)
   {
     pushButton[0]->setChecked(false);
     pushButton[2]->setChecked(true);
     pushButton[1]->setChecked(false);
   }
}
void MainWindow::updatetemperatureresult(int result){
    newresult=result;
     if(newresult>=2||newresult<=-2){
        pushButton[4]->setChecked(true);
    }

}
void MainWindow::updatehumidityresult(int result){
    newresulttwo=result;
     if(newresulttwo>=10||newresulttwo<=-10){
        pushButton[4]->setChecked(true);
    }

}
void MainWindow::updateSmogvalue(int smogvalue)
{
    newsmogvalue=smogvalue;
     normalizedValue = static_cast<float>(newsmogvalue) / 4096.0f * 100.0f;
     normalizedValue += 55; // 直接加上50

      qDebug() << "新的malizedValue值" <<  normalizedValue;
     if(smogvalue>2000)
     {
         pushButton[3]->setChecked(true);
     }
     else if(smogvalue<=2000){
         pushButton[3]->setChecked(false);
     }
}
//不同界面之间的开启与关闭
void MainWindow::on_showChartButton_clicked()
{
    chartwindow->show();

}
void MainWindow::on_showtableButton_clicked()
{
    table->show();

}
void MainWindow::on_showcharttwoButton_clicked()
{
    charwindowtwo->show();

}
