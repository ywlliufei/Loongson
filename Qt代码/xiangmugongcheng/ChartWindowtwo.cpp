#include <QObject>
#include "ChartWindowtwo.h"
#include <QDebug>
#include <QtCharts>
ChartWindowtwo::ChartWindowtwo(QWidget *parent)
    : QDialog(parent)
{


           seriestwo = new QLineSeries();
           seriestwo1 = new QLineSeries();
           seriestwo2 = new QLineSeries();
           seriestwo3 = new QLineSeries();

            seriestwo->setColor(Qt::black);
           seriestwo1->setColor(Qt::red);
           seriestwo2->setColor(Qt::blue);
           seriestwo3->setColor(Qt::green);

           seriestwo->setName("污染空气");
           seriestwo1->setName("乙醇");
           seriestwo2->setName("甲烷");
           seriestwo3->setName("天然气");

           charttwo = new QChart();
           charttwo->addSeries(seriestwo);
           charttwo->addSeries(seriestwo1);
           charttwo->addSeries(seriestwo2);
           charttwo->addSeries(seriestwo3);
           charttwo->setTitle("气体监测折线数据图");


           QValueAxis *axisY = new QValueAxis;
           axisY->setRange(0, 1000);
           axisY->setLabelFormat("%i");
           axisY->setGridLineVisible(true);
           axisY->setTickCount(14);
           axisY->setMinorTickCount(1);
           axisY->setTitleText(u8"数据");



           charttwo->addAxis(axisY, Qt::AlignLeft);
            QValueAxis *axisX = new QValueAxis;
            axisX->setRange(0, 50);
            axisX->setLabelFormat("%i");
            axisX->setGridLineVisible(true);
            axisX->setTickCount(50);
            axisX->setMinorTickCount(0);
            axisX->setTitleText(u8"个数");
            charttwo->addAxis(axisX, Qt::AlignBottom);

           seriestwo->attachAxis(axisY);
           seriestwo1->attachAxis(axisY);
           seriestwo2->attachAxis(axisY);
           seriestwo3->attachAxis(axisY);
           seriestwo->attachAxis(axisX);
           seriestwo1->attachAxis(axisX);
           seriestwo2->attachAxis(axisX);
           seriestwo3->attachAxis(axisX);




           chartViewtwo = new QChartView(charttwo);
           chartViewtwo->setRenderHint(QPainter::Antialiasing);


           QVBoxLayout *layout = new QVBoxLayout(this);
           layout->addWidget(chartViewtwo);
           setLayout(layout);


           setWindowTitle("数据窗口");
           resize(2200, 700);
}

ChartWindowtwo::~ChartWindowtwo ()
{
}
void ChartWindowtwo::updateCharttwoOne(int pollutedairvalue) {

     qreal newpollutedairvalue=static_cast<qreal>(pollutedairvalue)/ 4.0;
    pollutedairValues.append(newpollutedairvalue);
    qDebug() << "折线图pollutedair容器大小：" << pollutedairValues.count();
    qDebug() << "折线图pollutedair最后添加的值：" << pollutedairValues.last();
    qDebug() << "新接收的 pollutedair 数据：" << pollutedairvalue;
    int x = pollutedairValues.count() - 1;
    QPointF point(x, newpollutedairvalue);
    if (seriestwo->count() >= 50) {
        seriestwo->clear();
        pollutedairValues.clear();
    } else {
        seriestwo->append(point);
        }
}
void ChartWindowtwo::updateCharttwoTwo(int alcoholvalue) {
qreal newalcoholvalue=static_cast<qreal>(alcoholvalue)/ 5.0;
    alcoholValues.append(alcoholvalue);
    qDebug() << "容器alcohol大小：" <<  alcoholValues.count();
    qDebug() << "最后添加的值：" <<  alcoholValues.last();
    qDebug() << "新接收的 alcohol 数据：" << alcoholvalue;
    int x = alcoholValues.count() - 1;
    QPointF point(x, newalcoholvalue);
    if (seriestwo1->count() >= 50) {
        seriestwo1->clear();
        alcoholValues.clear();
    } else {
      seriestwo1->append(point);
        }
}
void ChartWindowtwo::updateCharttwoThree(int CH4value) {
    qreal newCH4value=static_cast<qreal>(CH4value)/ 4.0;
    CH4Values.append(newCH4value);
    qDebug() << "容器CH4大小：" << CH4Values.count();
    qDebug() << "最后添加的值：" << CH4Values.last();
    qDebug() << "新接收的 CH4 数据：" << CH4value;
    int x = CH4Values.count() - 1;
    QPointF point(x, newCH4value);
    if (seriestwo2->count() >= 50) {
        seriestwo2->clear();
        CH4Values.clear();
    } else {
        seriestwo2->append(point);
        }
}
void ChartWindowtwo::updateCharttwoFour(int petroleumvalue) {
    qreal newpetroleumvalue=static_cast<qreal>(petroleumvalue)/ 4.0;
    petroleumValues.append(newpetroleumvalue);
    qDebug() << "容器petroleum大小：" << petroleumValues.count();
    qDebug() << "最后添加的值：" << petroleumValues.last();
    qDebug() << "新接收的 petroleum 数据：" << petroleumvalue;
    int x =  petroleumValues.count() - 1;
    QPointF point(x, newpetroleumvalue);
    if (seriestwo3->count() >= 50) {
        seriestwo3->clear();
        petroleumValues.clear();
    } else {
        seriestwo3->append(point);
        }
}
