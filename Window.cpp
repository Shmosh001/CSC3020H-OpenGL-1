
#include "Window.h"
#include <glwidget.h>
#include <QtWidgets>
#include <QGLFormat>
#include <iostream>

#include <QApplication>
#include <QMenuBar>
#include <QGridLayout>
#include <QTimer>

Window::Window()
{

    win = new QWidget();
    setCentralWidget(win);
    QGridLayout * layout = new QGridLayout();

    QGLFormat glFormat;
    glFormat.setVersion( 3, 2 );
    glFormat.setProfile( QGLFormat::CoreProfile );
    glFormat.setSampleBuffers( true );

    w = new GLWidget( glFormat );
    layout->addWidget(w,1,0);


    fileMenu = new QMenu("File");
    menuBar()->addMenu(fileMenu);
    //add menu options to Menu
    newFile = new QAction("New", fileMenu);
    openFile = new QAction("Open", fileMenu);
    //add actions to menu options
    fileMenu->addAction(newFile);
    fileMenu->addAction(openFile);

    QObject::connect(newFile, SIGNAL(triggered()), this, SLOT(newOption()));
    QObject::connect(openFile, SIGNAL(triggered()), this, SLOT(openFileSTL()));

    win->setLayout(layout);
    r = 1;
    t = 1;






}

//opens stl file
void Window::openFileSTL()
{

    using namespace  std;


    QString fileName = QFileDialog::getOpenFileName(this, tr("Open Image"), QString() ,tr("Image Files (*.stl)"));
    if(!fileName.isEmpty())
    {
        string file = fileName.toStdString();

        vector<float> vectors = w->readFile(file);
        w->loadImage(vectors);
        w->repaint();
    }


}

//clears screen
void Window::newOption()
{

    using namespace  std;
    w->stopDraw();

}

void Window::keyPressEvent( QKeyEvent* e )
{
    switch ( e->key() )
    {
        //rotate
        case Qt::Key_R:
            std::cout << "Rotate" << std::endl;
            w->rotation = true;
            w->translation = false;
            w->scale = false;
            r++;

            if(r > 3)
            {
                r = 1;
            }
            break;

        //translate
        case Qt::Key_T:
            w->rotation = false;
            w->translation = true;
            w->scale = false;
            t++;
            if(t > 3)
            {
                t = 1;
            }
            break;

        //scale
        case Qt::Key_S:
            w->rotation = false;
            w->translation = false;
            w->scale = true;
            break;

    }
}

void Window::wheelEvent(QWheelEvent *event)
{

    if(w->rotation == true && w->translation == false && w->scale == false)
    {

        if(event->delta() > 0)
        {
            w->rotateImage(true, r);
        }

        else
        {
            w->rotateImage(false, r);
        }

    }

    if(w->rotation == false && w->translation == true && w->scale == false)
    {
        if(event->delta() > 0)
        {
            w->translateImage(true, t);
        }

        else
        {
            w->translateImage(false, t);
        }
    }

    if(w->rotation == false && w->translation == false && w->scale == true)
    {
        if(event->delta() > 0)
        {
            w->scaleImage(true);
        }

        else
        {
            w->scaleImage(false);
        }
    }

}










