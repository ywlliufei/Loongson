#ifndef CHARTWINDOWTWO_H
#define CHARTWINDOWTWO_H
#include <QDialog>
#include <QChart>
#include <QChartView>
#include <QLineSeries>
#include <QVBoxLayout>
#include <QVector>
#include <QValueAxis>
QT_CHARTS_USE_NAMESPACE

class ChartWindowtwo : public QDialog
{
    Q_OBJECT

public:
    explicit ChartWindowtwo(QWidget *parent = nullptr);
    ~ChartWindowtwo();
public slots:
    void updateCharttwoOne(int pollutedairvalue);
    void updateCharttwoTwo(int alcoholvalue);
    void updateCharttwoThree(int CH4value);
    void updateCharttwoFour(int petroleumvalue);
private:
    QChart *charttwo;
    QChartView *chartViewtwo;
    QLineSeries *seriestwo;
    QLineSeries *seriestwo1;
    QLineSeries *seriestwo2;
    QLineSeries *seriestwo3;
    QVector<qreal> pollutedairValues;
    QVector<qreal> alcoholValues;
    QVector<qreal>CH4Values;
    QVector<qreal> petroleumValues;
};
#endif // CHARTWINDOWTWO_H
