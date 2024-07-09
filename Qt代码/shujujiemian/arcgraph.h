#ifndef ARCGRAPH_H
#define ARCGRAPH_H

#include <QWidget>
#include <QPainter>
#include <QPaintEvent>

//蓝色科技感弧形视图
class ArcGraph : public QWidget
{
    Q_OBJECT
//具有特定开始角度和角度长度的弧形
public:
    ArcGraph(QWidget *parent = nullptr);
    ~ArcGraph();//起到清理资源的作用

    void setstartAngle(int);//接受整数参数表示开始的角度
    void setangleLength(int);//表示角度的开始和范围

private:
    void paintEvent(QPaintEvent *event);
    int startAngle;//存储开始的角度
    int angleLength;//存储角度的长度和范围
};
#endif // ARCGRAPH_H
