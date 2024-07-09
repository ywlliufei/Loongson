#include "arcgraph.h"

ArcGraph::ArcGraph(QWidget *parent)
    : QWidget(parent),
      startAngle(90),
      angleLength(0)
{
    this->setMinimumSize(100, 100);//控件的最小尺寸
    setAttribute(Qt::WA_TranslucentBackground, true);//允许控件具有透明的背景
}

ArcGraph::~ArcGraph()
{
}
//调用下列函数角度弧度将更新
void ArcGraph::setstartAngle(int angle)
{
    startAngle = angle;
    this->repaint();
}

void ArcGraph::setangleLength(int length)
{
    angleLength = length;
    this->repaint();
}

void ArcGraph::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    //保存状态
    painter.save();
    // 设置抗锯齿
    painter.setRenderHints(QPainter::Antialiasing, true);
    //最外层的圆
    QRect drawRect = event->rect();
    QRadialGradient gradient1(drawRect.center(),// 渐变中心
                              drawRect.width() / 2,// 渐变半径
                              drawRect.center()); // 焦点位置（这里与中心相同）
    gradient1.setColorAt(0, Qt::transparent);// 起始透明
    gradient1.setColorAt(0.5, Qt::transparent);//50%位置透明
    gradient1.setColorAt(0.51, QColor("#BA8CC3"));
    gradient1.setColorAt(0.58, QColor("#BA8CC3"));
    gradient1.setColorAt(0.59, Qt::transparent);
    gradient1.setColorAt(1, Qt::transparent);
    painter.setBrush(gradient1); // 设置画刷为渐变
    painter.setPen(Qt::NoPen);
    painter.drawEllipse(drawRect);// 绘制椭圆（这里是圆，因为宽度和高度相同）

    // 里层的圆
    QRadialGradient gradient2(drawRect.center(),
                              drawRect.width() / 2,
                              drawRect.center());
    gradient2.setColorAt(0, Qt::transparent);
    gradient2.setColorAt(0.420, Qt::transparent);
    gradient2.setColorAt(0.421, QColor("#BA8CC3"));
    gradient2.setColorAt(0.430, QColor("#F4CDF9"));
    gradient2.setColorAt(0.440, QColor("#BA8CC3"));
    gradient2.setColorAt(0.441, Qt::transparent);
    gradient2.setColorAt(1, Qt::transparent);
    painter.setBrush(gradient2);
    painter.setPen(Qt::NoPen);
    painter.drawEllipse(drawRect);

    // 数字
    QFont font;
    font.setPixelSize(drawRect.width() / 10);
    painter.setPen(Qt::white);//画笔颜色
    painter.setFont(font);//字体
    qreal angleLengthDeg = static_cast<qreal>(angleLength);
    qreal percentage = (angleLengthDeg / 360.0) * 100;
    QString percentageText = QString::number(percentage, 'f', 2) + "%";//采用浮点数计算

    painter.drawText(drawRect, Qt::AlignCenter, percentageText);
    // 绘制文本标签，显示angleLength的百分比值

    // 发光背景圆
    painter.translate(drawRect.width() >> 1, drawRect.height() >> 1);   // 将坐标原点移动到绘图区域的中心
    int radius = drawRect.width() / 2;
    QRectF rect(-radius, -radius, radius << 1, radius << 1);
    // 计算半径并定义矩形，该矩形以原点为中心，并覆盖整个绘图区域

    QRadialGradient gradient3(0, 0, radius);
    gradient3.setColorAt(0, Qt::transparent);
    gradient3.setColorAt(0.42, Qt::transparent);
    gradient3.setColorAt(0.51, QColor("#90DBF2"));
    gradient3.setColorAt(0.55, QColor("#FFE700"));
    gradient3.setColorAt(0.58, QColor("#90DBF2"));
    gradient3.setColorAt(0.68, Qt::transparent);
    gradient3.setColorAt(1.0, Qt::transparent);
    painter.setBrush(gradient3);
    QPainterPath path1;
    path1.arcTo(rect, startAngle, -angleLength);
    painter.setPen(Qt::NoPen);
    painter.drawPath(path1);

    //发光圆弧
    QRadialGradient gradient4(0, 0, radius);
    gradient4.setColorAt(0, Qt::transparent);
    gradient4.setColorAt(0.49, Qt::transparent);
    gradient4.setColorAt(0.50, QColor("#00FFFD"));
    gradient4.setColorAt(0.59, QColor("#00FFFD"));
    gradient4.setColorAt(0.60, Qt::transparent);
    gradient4.setColorAt(1.0, Qt::transparent);
    painter.setBrush(gradient4);
    QPainterPath path2;
    path2.arcTo(rect, startAngle, -angleLength);
    painter.setPen(Qt::NoPen);
    painter.drawPath(path2);

    painter.restore();


    event->accept();
}
