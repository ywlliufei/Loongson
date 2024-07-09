#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QPushButton>
#include <QGridLayout>
#include <QListWidget>
#include <QLayout>
#include <QMessageBox>
#include <QTimer>
#include "../webapi/webapi.h"
#include "../shujujiemian/mainwindowtwo.h"
#include "ChartWindow.h"
#include "TableDialog.h"
#include "switchbutton.h"
#include "ChartWindowtwo.h"
class Webapi;
class MainWindowTwo;


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();


private:
    Webapi *webapi;
     MainWindowTwo *mainwindowtwo;
     ChartWindow *chartwindow;
     ChartWindowtwo *charwindowtwo;
     TableDialog *table;
    QLabel *label[5];
    QPushButton *cloudPushButton;
    QWidget *widget[11];
    QVBoxLayout *vBoxLayout[4];
    QHBoxLayout *hBoxLayout[6];
    QPushButton *pushButton[11];
    QListWidget *listWidget;
    QLabel *itemLabel[9];
    QGridLayout *gridLayout[3];
    SwitchButton *switchButton[3];
    void changecolor();
    void paintEvent(QPaintEvent *event);
    void closeEvent(QCloseEvent *event);

    QPaintEvent *event;
    QMessageBox msgBox;//询问对话窗
    int mesbox_result;

    // 界面布局
    void layoutInit();
    //一些初值设定；
int newlightvalue;
float newsmogvalue;
int normalizedValue;
int newresult;
int newresulttwo;
private slots:
    void deviceState(QString);
    void onPushButtonClicked(); // 槽函数，响应按钮点击事件
    void on_showChartButton_clicked();
    void on_showtableButton_clicked();
    void on_showcharttwoButton_clicked();
    void mainwindowflag1();
    void updateLightvalue(int lightvalue);
    void updateSmogvalue(int smogvalue);
    void updatetemperatureresult(int result);
    void updatehumidityresult(int result);
    void onToggled(bool);



};
#endif // MAINWINDOW_H
