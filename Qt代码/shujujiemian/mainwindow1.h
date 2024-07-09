/******************************************************************
Copyright © Deng Zhimao Co., Ltd. 1990-2021. All rights reserved.
* @projectName   08_spi_sensor
* @brief         mainwindow.h
* @author        Deng Zhimao
* @email         1252699831@qq.com
* @net           www.openedv.com
* @date          2021-05-21
*******************************************************************/
#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>
/*垂直布局管理器*/
#include <QVBoxLayout>
/*水平布局管理器*/
#include <QHBoxLayout>
#include "arcgraph.h"
#include "glowtext.h"
#include "headview/headview.h"
class ArcGraph;
class GlowText;
class HeadView;
/*对C++的拓展*/
class MainWindow1 : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow1(QWidget *parent = nullptr);
    ~MainWindow1();

private:
    ArcGraph *arcGraph[3];
    GlowText *glowText[3];

    QVBoxLayout *vBoxLayout;
    QHBoxLayout *hBoxLayout[5];

    GlowText *test;

    /* 容器作用，用于布局 */
    QWidget *widget[6];

    /* 标签文本 */
    QLabel *label[3];

    /* 视图表头 */
    HeadView *headView;


};
#endif // MAINWINDOW_H
