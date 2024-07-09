#include "glowtext.h"
#include <QDebug>
#include <QGraphicsBlurEffect>//用于为图形项增加模糊效果

GlowText::GlowText(QWidget *parent)
    : QWidget(parent),
      textColor("#B40C06"),
      fontSize(18),
      textData("0")//要显示的文本
{
    QFont font;
    font.setPixelSize(fontSize);//像素大小为之前定义的fontsize
    QPalette pal;//调色板
    pal.setColor(QPalette::WindowText, textColor);//窗口文本颜色为之前设定的颜色
      textLabelbg = new QLabel(this);
      textLabelbg->setAttribute(Qt::WA_TranslucentBackground, true);
      textLabelbg->setPalette(pal);
      textLabelbg->setFont(font);
      textLabelbg->setText(textData);
      textLabelbg->setAlignment(Qt::AlignCenter);


    // 设置模糊特效
    QGraphicsBlurEffect *ef = new QGraphicsBlurEffect();
    ef->setBlurRadius(25);
    ef->setBlurHints(QGraphicsBlurEffect::QualityHint);
    textLabelbg->setGraphicsEffect(ef);

    textLabel = new QLabel(this);
    textLabel->setAttribute(Qt::WA_TranslucentBackground, true);
    textLabel->setPalette(pal);
    textLabel->setFont(font);
    textLabel->setText(textData);
    textLabel->setAlignment(Qt::AlignCenter);
    textLabelbg->adjustSize();
    textLabel->adjustSize();

    this->resize(textLabel->size().width() + 10,
                 textLabel->size().height() + 10);
    //背景透明化
    this->setAttribute(Qt::WA_TranslucentBackground, true);
}

GlowText::~GlowText()
{
}

void GlowText::setTextColor(QColor color)
{
    QPalette pal;
    pal.setColor(QPalette::WindowText, color);
    textLabelbg->setPalette(pal);
    textLabel->setPalette(pal);
}

void GlowText::setFontSize(int size)
{
    QFont font;
    font.setPixelSize(size);

    textLabelbg->setFont(font);
    textLabel->setFont(font);

    textLabel->adjustSize();
    textLabelbg->adjustSize();
    this->resize(textLabel->size().width() + 10,
                 textLabel->size().height() + 10);
}

void GlowText::setTextData(QString text)
{
    textLabelbg->setText(text);
    textLabel->setText(text);

    textLabel->adjustSize();
    textLabelbg->adjustSize();
    this->resize(textLabel->size().width() + 20,
                 textLabel->size().height() + 20);
}
