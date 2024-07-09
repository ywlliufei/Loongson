#ifndef CHARTWINDOW_H
#define CHARTWINDOW_H

#include <QDialog>
#include <QChart>
#include <QChartView>
#include <QLineSeries>
#include <QVBoxLayout>
#include <QVector>
#include <QValueAxis>
QT_CHARTS_USE_NAMESPACE

class ChartWindow : public QDialog
{
    Q_OBJECT

public:
    explicit ChartWindow(QWidget *parent = nullptr);
    ~ChartWindow();
public slots:
    //存储数据，并将数据显现在折线图上
    void updateChartOne(int smogvalue);
    void updateChartTwo(int temperaturevalue);
    void updateChartThree(int humidityvalue);
    void updateChartFour(int lightvalue);
private:
    //制作完整折线图和数据容器
    QChart *chart;
    QChartView *chartView;
    QLineSeries *series;
    QLineSeries *series1;
    QLineSeries *series2;
    QLineSeries *series3;
    QVector<qreal> smogValues;
    QVector<int> temperatureValues;
    QVector<qreal>lightValues;
    QVector<int> humidityValues;
};

#endif // CHARTWINDOW_H
