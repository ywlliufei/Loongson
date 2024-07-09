#include <QObject>
#include "ChartWindow.h"
#include <QDebug>
#include <QtCharts>
ChartWindow::ChartWindow(QWidget *parent)
    : QDialog(parent)
{

     //创建图表序列
           series = new QLineSeries();
           series1 = new QLineSeries();
           series2 = new QLineSeries();
           series3 = new QLineSeries();
      //每个系列设置不同的颜色
            series->setColor(Qt::black);
           series1->setColor(Qt::red);
           series2->setColor(Qt::blue);
           series3->setColor(Qt::green);
      //每个系列设置图例
           series->setName("烟雾");
           series1->setName("温度");
           series2->setName("湿度");
           series3->setName("光照");
      //创建图表对象并添加序列
           chart = new QChart();
           chart->addSeries(series);
           chart->addSeries(series1);
           chart->addSeries(series2);
           chart->addSeries(series3);
           chart->setTitle("多种折线数据图");

       // 设置Y轴的最大值
           QValueAxis *axisY = new QValueAxis;
           axisY->setRange(-40, 100); // 设置Y轴的范围为-40到100
           axisY->setLabelFormat("%i"); // 设置Y轴的标签格式为整数
           axisY->setGridLineVisible(true);
           axisY->setTickCount(14);
           axisY->setMinorTickCount(1);
           axisY->setTitleText(u8"数据");
           // 将 Y 轴添加到图表中，并指定其对齐方式（这里使用 Qt::AlignLeft）
           chart->addAxis(axisY, Qt::AlignLeft);
            QValueAxis *axisX = new QValueAxis;
            axisX->setRange(0, 50);                                // 设置范围
            axisX->setLabelFormat("%i");                            // 设置刻度的格式
            axisX->setGridLineVisible(true);                        // 网格线可见
            axisX->setTickCount(50);                                 // 设置多少个大格
            axisX->setMinorTickCount(0);                            // 设置每个大格里面小刻度线的数目
            axisX->setTitleText(u8"个数");                             // 设置描述
            chart->addAxis(axisX, Qt::AlignBottom);
           // 将序列与 Y 轴关联
           series->attachAxis(axisY);
           series1->attachAxis(axisY);
           series2->attachAxis(axisY);
           series3->attachAxis(axisY);
           series->attachAxis(axisX);
           series1->attachAxis(axisX);
           series2->attachAxis(axisX);
           series3->attachAxis(axisX);



           // 创建图表视图
           chartView = new QChartView(chart);
           chartView->setRenderHint(QPainter::Antialiasing);

           // 设置对话框的布局
           QVBoxLayout *layout = new QVBoxLayout(this);
           layout->addWidget(chartView);
           setLayout(layout);

           // 设置对话框的其他属性
           setWindowTitle("数据窗口");
           resize(2200, 700);
}

ChartWindow::~ChartWindow ()
{
}
void ChartWindow::updateChartOne(int smogvalue) {
    // 将新的 smog 值添加到容器中
     qreal newsmogvalue=static_cast<qreal>(smogvalue)/ 40.0;
    smogValues.append(newsmogvalue);
    qDebug() << "折线图smog容器大小：" << smogValues.count();
    qDebug() << "折线图smog最后添加的值：" << smogValues.last();
    qDebug() << "新接收的 smog 数据：" << smogvalue;
    int x = smogValues.count() - 1;
    QPointF point(x, newsmogvalue);
    if (series->count() >= 50) {
        series->clear();
        smogValues.clear();
    } else {
        series->append(point);
        }
}
void ChartWindow::updateChartTwo(int temperaturevalue) {

    temperatureValues.append(temperaturevalue);
    qDebug() << "容器大小：" << temperatureValues.count();
    qDebug() << "最后添加的值：" << temperatureValues.last();
    qDebug() << "新接收的 temperature 数据：" << temperaturevalue;
    int x = temperatureValues.count() - 1;
    QPointF point(x, temperaturevalue);
    if (series1->count() >= 50) {
        series1->clear();
        temperatureValues.clear();
    } else {
      series1->append(point);
        }
}
void ChartWindow::updateChartThree(int humidityvalue) {
    humidityValues.append(humidityvalue);
    qDebug() << "容器大小：" << humidityValues.count();
    qDebug() << "最后添加的值：" << humidityValues.last();
    qDebug() << "新接收的 humidity 数据：" << humidityvalue;
    int x = humidityValues.count() - 1;
    QPointF point(x, humidityvalue);
    if (series2->count() >= 50) {
        series2->clear();
        humidityValues.clear();
    } else {
        series2->append(point);
        }
}
void ChartWindow::updateChartFour(int lightvalue) {
    qreal newlightvalue=static_cast<qreal>(lightvalue)/ 5.0;
    lightValues.append(newlightvalue);
    qDebug() << "容器大小：" << lightValues.count();
    qDebug() << "最后添加的值：" << lightValues.last();
    qDebug() << "新接收的 light 数据：" << lightvalue;
    int x = lightValues.count() - 1;
    QPointF point(x, newlightvalue);
    if (series3->count() >= 50) {
        series3->clear();
        lightValues.clear();
    } else {
        series3->append(point);
        }
}
