#include "mainwindowtwo.h"
#include "mainwindow.h"
#include <QDebug>
#include <QTimer>
#include <QPainter>
#include <QWidget>
#include <QRadialGradient>
#include <QBrush>
#include <cmath>
MainWindowTwo::MainWindowTwo(QWidget *parent)
    : QMainWindow(parent)
{
    this->resize(1600, 1200);//mainwindow窗口大小
    this->setStyleSheet("background:#6F9DEC");//设置窗口背景大小
//设置数组数量（也就是显示数量）
    for (int i = 0; i < 13; i++)
        widget[i] = new QWidget();

    for (int i = 0; i < 8; i++)
        arcGraph[i] = new ArcGraph();

    for (int i = 0; i < 12; i++)
        hBoxLayout[i] = new QHBoxLayout();

    headView = new HeadView();

    QFont font;
    font.setPixelSize(18);//设置字体大小

    QPalette pal;
    pal.setColor(QPalette::WindowText, Qt::white);//改变窗口部件颜色

    QStringList list;
    list<<"烟雾数值："<<"光照强度："<<"温度："<<"湿度："<<"空气污染："<<"酒精："<<"甲烷："<<"天然气：";
    for (int i = 0; i < 8; i++) {
        label[i] = new QLabel();
        glowText[i] = new GlowText();
        glowText[i]->setMinimumWidth(30);
        label[i]->setText(list[i]);
        label[i]->setFont(font);
        label[i]->setPalette(pal);
        label[i]->adjustSize();
    }

    vBoxLayout = new QVBoxLayout();

    QStringList listmenu;
       listmenu<<"主菜单";
       for (int i = 1; i <2; i++) {
           pushButtontwo[i] = new QPushButton();
          pushButtontwo[i]->setFixedSize(120, 40);
           pushButtontwo[i]->setText(listmenu[0]);
           pushButtontwo[i]->setCheckable(true);
         pushButtontwo[i]->setFocusPolicy(Qt::NoFocus);
           pushButtontwo[i]->setStyleSheet("background-color: #F4CDF9;color: 4D4D8A;");//设置背景色与字体颜色
   connect(pushButtontwo[i], &QPushButton::clicked, this, &MainWindowTwo::onPushButtonClickedreturn);

       }



       // 垂直布局，将主窗体为上一、上二、下一、下二四个部分，方便布局
        vBoxLayout->addWidget(headView);
        vBoxLayout->addWidget(widget[1]);//上一，蓝色圆弧
        vBoxLayout->addWidget(widget[2]);//上二，文字
        vBoxLayout->addWidget(widget[7]);//下一，蓝色圆弧
        vBoxLayout->addWidget(widget[8]);//下二，文字
        widget[0]->setLayout(vBoxLayout);

    // 主布局设置为widget[0]
    setCentralWidget(widget[0]);// widget[0] 将被添加到主窗口中，并且它会接管主窗口客户区的布局和大小管理。

    // 设置widget[1]的高度，不会随界面的大小而变化
    widget[2]->setFixedHeight(150);

    vBoxLayout->addWidget(pushButtontwo[1]);//显示主菜单按钮

    // 第一行三个蓝色科技感弧形图布局，采用水平布局
    hBoxLayout[0]->addWidget(arcGraph[0]);
    hBoxLayout[0]->addWidget(arcGraph[1]);
    hBoxLayout[0]->addWidget(arcGraph[2]);
    hBoxLayout[0]->addWidget(arcGraph[3]);
    widget[1]->setLayout(hBoxLayout[0]);

    // 第二行四个蓝色科技感弧形图布局，采用水平布局
    hBoxLayout[6]->addWidget(arcGraph[4]);
    hBoxLayout[6]->addWidget(arcGraph[5]);
    hBoxLayout[6]->addWidget(arcGraph[6]);
    hBoxLayout[6]->addWidget(arcGraph[7]);
    widget[7]->setLayout(hBoxLayout[6]);

    // 第一行数据文字容器水平布局
    hBoxLayout[1]->addWidget(widget[3]);
    hBoxLayout[1]->addWidget(widget[4]);
    hBoxLayout[1]->addWidget(widget[5]);
    hBoxLayout[1]->addWidget(widget[6]);
    hBoxLayout[1]->setContentsMargins(0, 40, 0, 0);

    widget[2]->setLayout(hBoxLayout[1]);

//第一行
    //第一列布局
    hBoxLayout[2]->addWidget(label[0]);
    hBoxLayout[2]->addWidget(glowText[0]);
    hBoxLayout[2]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
    widget[3]->setLayout(hBoxLayout[2]);

     // 第二列布局
    hBoxLayout[3]->addWidget(label[1]);
    hBoxLayout[3]->addWidget(glowText[1]);
    hBoxLayout[3]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
    widget[4]->setLayout(hBoxLayout[3]);

    // 第三列布局
    hBoxLayout[4]->addWidget(label[2]);
    hBoxLayout[4]->addWidget(glowText[2]);
    hBoxLayout[4]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
    widget[5]->setLayout(hBoxLayout[4]);

    // 第四列布局
    hBoxLayout[5]->addWidget(label[3]);
    hBoxLayout[5]->addWidget(glowText[3]);
   hBoxLayout[5]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
    widget[6]->setLayout(hBoxLayout[5]);

    //第二行
        //第二行数据文字容器水平布局
        hBoxLayout[7]->addWidget(widget[9]);
        hBoxLayout[7]->addWidget(widget[10]);
        hBoxLayout[7]->addWidget(widget[11]);
        hBoxLayout[7]->addWidget(widget[12]);
        hBoxLayout[7]->setContentsMargins(0, 40, 0, 0);
        widget[8]->setLayout(hBoxLayout[7]);


        //第一列布局
        hBoxLayout[8]->addWidget(label[4]);
        hBoxLayout[8]->addWidget(glowText[4]);
        hBoxLayout[8]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
        widget[9]->setLayout(hBoxLayout[8]);

        // 第二列布局
        hBoxLayout[9]->addWidget(label[5]);
        hBoxLayout[9]->addWidget(glowText[5]);
        hBoxLayout[9]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
        widget[10]->setLayout(hBoxLayout[9]);

        // 第三列布局
        hBoxLayout[10]->addWidget(label[6]);
        hBoxLayout[10]->addWidget(glowText[6]);
        hBoxLayout[10]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
        widget[11]->setLayout(hBoxLayout[10]);

        // 第四列布局
        hBoxLayout[11]->addWidget(label[7]);
        hBoxLayout[11]->addWidget(glowText[7]);
        hBoxLayout[11]->setAlignment(Qt::AlignTop | Qt::AlignHCenter);
        widget[12]->setLayout(hBoxLayout[11]);


#if __arm__
#endif
}

MainWindowTwo::~MainWindowTwo()
{
}


void MainWindowTwo::onPushButtonClickedreturn()
{

         this->hide();//隐藏目前的主窗口
    emit windowreturn();

}

//数据获取和显示函数
void MainWindowTwo::getSmogData(int smogValue) {
    // 使用smogvalue更新arcGraph的角度长度
    int maxsmog = 4096; // 阈值
    arcGraph[0]->setangleLength(static_cast<qreal>(smogValue) * 360.0 / maxsmog);
     qDebug() << "newgetsmogdata" << smogValue;
    // 使用smogValue更新glowText的文本数据
    QString smogText = QString::number(smogValue);
    glowText[0]->setTextData(smogText);
}
void MainWindowTwo::getTemperatureData(int temperatureValue) {
    int maxtemperature = 100;
    arcGraph[2]->setangleLength(static_cast<qreal>(temperatureValue) * 360.0 / maxtemperature);
     qDebug() << "newgettemperaturedata" << temperatureValue;
    QString temperatureText = QString::number(temperatureValue);
    glowText[2]->setTextData(temperatureText);
}
void MainWindowTwo::getLightData(int lightValue) {
    int maxlight = 1000;
    arcGraph[1]->setangleLength(static_cast<qreal>(lightValue) * 360.0 / maxlight);
     qDebug() << "newgetlightdata" << lightValue;
    QString lightText = QString::number(lightValue);
    glowText[1]->setTextData(lightText);
}
void MainWindowTwo::getHumidityData(int humidityValue) {
    int maxhumidity = 100;
    arcGraph[3]->setangleLength(static_cast<qreal>(humidityValue) * 360.0 / maxhumidity);
     qDebug() << "newgethumiditydata" << humidityValue;
    QString humidityText = QString::number(humidityValue);
    glowText[3]->setTextData(humidityText);
}
void MainWindowTwo::getPollutedAirData(int pollutedairValue) {
    int maxpollutedair = 3737;
    int newvalue1=4096-pollutedairValue;
    arcGraph[4]->setangleLength(static_cast<qreal>(newvalue1) * 360.0 / maxpollutedair);
     qDebug() << "newgetpollutedairdata" << newvalue1;
    QString pollutedairText = QString::number(newvalue1);
    glowText[4]->setTextData(pollutedairText);
}
void MainWindowTwo::getAlcoholData(int alcoholValue) {
    int maxalcohol = 3027;
    int newvalue2=4096-alcoholValue;
    arcGraph[5]->setangleLength(static_cast<qreal>(newvalue2) * 360.0 / maxalcohol);
     qDebug() << "newgetalcoholdata" << newvalue2;
    QString alcoholText = QString::number(newvalue2);
    glowText[5]->setTextData(alcoholText);
}
void MainWindowTwo::getCH4Data(int CH4Value) {
    int maxCH4 = 3762;
    int newvalue3=4096-CH4Value;
    arcGraph[6]->setangleLength(static_cast<qreal>(newvalue3) * 360.0 / maxCH4);
     qDebug() << "newgetCH4data" << newvalue3;
    QString CH4Text = QString::number(newvalue3);
    glowText[6]->setTextData(CH4Text);
}
void MainWindowTwo::getPetroleumData(int petroleumValue) {
    int maxpetroleum = 3766;
    int newvalue4=4096-petroleumValue;
    arcGraph[7]->setangleLength(static_cast<qreal>(newvalue4) * 360.0 / maxpetroleum);
     qDebug() << "newgetpetroleumdata" << newvalue4;
    QString petroleumText = QString::number(newvalue4);
    glowText[7]->setTextData(petroleumText);
}
