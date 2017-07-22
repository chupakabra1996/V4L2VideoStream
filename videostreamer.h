#ifndef VIDEOSTREAMER_H
#define VIDEOSTREAMER_H

#include <memory>
#include <QMainWindow>
#include <QPixmap>
#include "v4l2device.h"

using namespace std;

namespace Ui {
    class VideoStreamer;
}

class VideoStreamer : public QMainWindow
{
    Q_OBJECT

public:
    explicit VideoStreamer(QWidget *parent = 0);
    ~VideoStreamer();

    QPixmap pixmap;

signals:
    void renderedImage(const QImage&);

private slots:
    void on_streamButton_clicked();
    void setPicture(const QImage&);

private:
    Ui::VideoStreamer *ui;
    unique_ptr<V4L2Device> _capture;

    void paintEvent(QPaintEvent *event);
};

#endif // VIDEOSTREAMER_H
