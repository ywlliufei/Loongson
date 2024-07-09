#ifndef TABLEDIALOG_H
#define TABLEDIALOG_H

#include <QDialog>
#include <QTableWidget>
#include<QVector>

class TableDialog : public QDialog
{
    Q_OBJECT

public:
    explicit TableDialog(QWidget *parent = nullptr);

private:
    //制表和判断行数和列数的定义
    QTableWidget *tableWidget;
    QVector<int> smogValuess;
    QVector<int> lightValuess;
    QVector<int> temperatureValuess;
    QVector<int> humidityValuess;
    int currentRow;
    int currentColumn;
    int currentRow1;
    int currentColumn1;
    int currentRow2;
    int currentColumn2;
    int currentRow3;
    int currentColumn3;



public slots:
    //接收数据和填表的槽函数
void updateTableOne(int smogvalue);
void updateTableThree(int temperaturevalue);
void updateTableFour(int humidityvalue);
void updateTableTwo(int lightvalue);



};

#endif // TABLEDIALOG_H
