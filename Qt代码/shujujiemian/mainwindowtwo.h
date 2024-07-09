#ifndef MAINWINDOWTWO_H
#define MAINWINDOWTWO_H
#include "../webapi/webapi.h"
#include <QMainWindow>
#include <QLabel>
//垂直布局管理器
#include <QVBoxLayout>
//水平布局管理器
#include <QHBoxLayout>
#include <QPushButton>
#include <QGridLayout>
#include <QMessageBox>
#include <QTimer>
#include <QListWidget>
#include <QLayout>
#include "arcgraph.h"
#include "glowtext.h"
#include "headview/headview.h"
class ArcGraph;
class GlowText;
class HeadView;
class Webapi;


class MainWindowTwo : public QMainWindow
{
    Q_OBJECT

public:
    MainWindowTwo(QWidget *parent = nullptr);
    ~MainWindowTwo();

private:
    ArcGraph *arcGraph[8];
    GlowText *glowText[8];

    QVBoxLayout *vBoxLayout;
    QHBoxLayout *hBoxLayout[12];

    QPushButton *pushButtontwo[5];

    GlowText *test;
    QLabel *percentageLabel; // 显示角度百分比的标签
    //容器作用，用于布局
    QWidget *widget[13];
    //标签文本
    QLabel *label[8];
    //视图表头
    HeadView *headView;
public slots:
    void getSmogData(int smogValue);
    void getTemperatureData(int temperatureValue);
    void getLightData(int lightValue);
    void onPushButtonClickedreturn();
    void getHumidityData(int humidityValue);
    void getPollutedAirData(int pollutedairValue);
    void getAlcoholData(int alcoholValue);
    void getCH4Data(int CH4Value);
    void getPetroleumData(int petroleumValue);

signals:
    void windowreturn();



};



#endif // MAINWINDOW_H
