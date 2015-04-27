#ifndef WINDOW_H
#define WINDOW_H
#include <QMainWindow>
#include <glwidget.h>
class Window : public QMainWindow
{

    Q_OBJECT
    private:
        QWidget *win;
        GLWidget * w;
        QMenu *fileMenu;
        QAction *newFile;
        QAction *openFile;



    public:
        Window();


};

#endif // WINDOW_H
