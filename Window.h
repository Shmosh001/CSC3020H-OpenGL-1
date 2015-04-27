#ifndef WINDOW_H
#define WINDOW_H
#include <QMainWindow>
#include <glwidget.h>


class Window : public QMainWindow
{

    Q_OBJECT



    public:
        Window();
        void keyPressEvent( QKeyEvent* e ); //keyboard event
        void wheelEvent(QWheelEvent *event); //whell event


    private:
        QMenuBar *menubar;
        QWidget *win;
        GLWidget * w;
        QMenu *fileMenu;
        QAction *newFile;
        QAction *openFile;
        int r; //represents axis to rotate by
        int t; //represents axis to translate by



    public slots:
        void openFileSTL();
        void newOption();


};

#endif // WINDOW_H
