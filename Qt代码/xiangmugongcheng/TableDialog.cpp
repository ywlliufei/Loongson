#include "TableDialog.h"
#include <QTableWidgetItem>
#include<QHeaderView>
#include<QDebug>
TableDialog::TableDialog(QWidget *parent)
    : QDialog(parent),
      currentRow(0),
      currentColumn(0),
      currentRow1(0),
      currentColumn1(1),
      currentRow2(0),
      currentColumn2(2),
      currentRow3(0),
      currentColumn3(3),
      tableWidget(new QTableWidget(this))
{
    setWindowTitle("历史数据存储"); // 设置对话框的标题

    // 设置表格的行数和列数
    int rowCount = 20; // 示例行数
    int columnCount = 12; // 示例列数

    tableWidget->setColumnCount(columnCount);
    tableWidget->setRowCount(rowCount);
    tableWidget->setFixedSize(QSize(1100, 1000)); // 设置最大宽度和高度
    // 设置表头
    QStringList headers;
       headers << "烟雾数值" << "光照数值" << "环境温度"<< "环境湿度"<< "烟雾数值" << "光照数值" << "环境温度"<< "环境湿度"<< "烟雾数值" << "光照数值" << "环境温度"<< "环境湿度";
       tableWidget->setHorizontalHeaderLabels(headers);

    // 设置对话框的大小和表格的初始大小
    resize(1100, 800);
    tableWidget->resizeColumnsToContents();
    tableWidget->resizeRowsToContents();
}
void TableDialog::updateTableOne(int smogvalue) {
    smogValuess.append(smogvalue);
    qDebug() << "图表smog容器大小：" << smogValuess.count();
    qDebug() << "图表smog最后添加的值：" << smogValuess.last();
    // 创建一个新的表格项
       QTableWidgetItem *newItem = new QTableWidgetItem(QString::number(smogvalue));
    // 填充表格
       tableWidget->setItem(currentRow, currentColumn, newItem);
    // 更新当前位置
       currentRow++;
    // 检查是否达到了当前列的最后一行
       if (currentRow >= tableWidget->rowCount()) {
           // 重置行到第一行，并检查是否需要更新列
           currentRow = 0;

           // 按第一列、第五列、第九列的顺序填充
           currentColumn = (currentColumn + 4) % 12; // 使用模运算来循环列索引


       }
     // 检查是否填充了60个数据，并需要清空指定列
       if (smogValuess.size() == 60) {
           for (int i = 0; i < tableWidget->rowCount(); ++i) {
               tableWidget->setItem(i, 0, nullptr); // 清空第1列
               tableWidget->setItem(i, 4, nullptr); // 清空第5列
               tableWidget->setItem(i, 8, nullptr); // 清空第9列
               smogValuess.clear();
           }
           currentRow = 0;
           currentColumn = 0;

       }
}
void TableDialog::updateTableTwo(int lightvalue) {
    lightValuess.append(lightvalue);
    qDebug() << "图表light容器大小：" << lightValuess.count();
    qDebug() << "图表light最后添加的值：" << lightValuess.last();
       QTableWidgetItem *newItem1 = new QTableWidgetItem(QString::number(lightvalue));
       tableWidget->setItem(currentRow1, currentColumn1, newItem1);
       currentRow1++;
       if (currentRow1 >= tableWidget->rowCount()) {
           currentRow1 = 0;
           currentColumn1 = (currentColumn1 + 4) % 12;
       }
       if (lightValuess.size() == 60) {

           for (int i = 0; i < tableWidget->rowCount(); ++i) {
               tableWidget->setItem(i, 1, nullptr);
               tableWidget->setItem(i, 5, nullptr);
               tableWidget->setItem(i, 9, nullptr);
               lightValuess.clear();
           }
           currentRow1 = 0;
           currentColumn1 = 1;

       }
}


void TableDialog::updateTableThree(int temperaturevalue) {
    temperatureValuess.append(temperaturevalue);
    qDebug() << "图表temperature容器大小：" << temperatureValuess.count();
    qDebug() << "图表temperature最后添加的值：" << temperatureValuess.last();
       QTableWidgetItem *newItem2 = new QTableWidgetItem(QString::number(temperaturevalue));
       tableWidget->setItem(currentRow2, currentColumn2, newItem2);
       currentRow2++;
       if (currentRow2 >= tableWidget->rowCount()) {
           currentRow2 = 0;
           currentColumn2 = (currentColumn2 + 4) % 12;
       }
       if (temperatureValuess.size() == 60) {
           for (int i = 0; i < tableWidget->rowCount(); ++i) {
               tableWidget->setItem(i, 2, nullptr);
               tableWidget->setItem(i, 6, nullptr);
               tableWidget->setItem(i, 10, nullptr);
               temperatureValuess.clear();
           }
           currentRow2 = 0;
           currentColumn2 = 2;

       }
}
void TableDialog::updateTableFour(int humidityvalue) {
    humidityValuess.append(humidityvalue);
    qDebug() << "图表humidity容器大小：" << humidityValuess.count();
    qDebug() << "图表humidity最后添加的值：" << humidityValuess.last();
       QTableWidgetItem *newItem3 = new QTableWidgetItem(QString::number(humidityvalue));
       tableWidget->setItem(currentRow3, currentColumn3, newItem3);
       currentRow3++;
       if (currentRow3 >= tableWidget->rowCount()) {
           currentRow3 = 0;
           currentColumn3 = (currentColumn3 + 4) % 12;
       }
       if (humidityValuess.size() == 60) {
           for (int i = 0; i < tableWidget->rowCount(); ++i) {
               tableWidget->setItem(i, 3, nullptr);
               tableWidget->setItem(i, 7, nullptr);
               tableWidget->setItem(i, 11, nullptr);
                humidityValuess.clear();
           }
           currentRow3 = 0;
           currentColumn3 = 3;
        }

}
