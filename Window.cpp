
#include "Window.h"
#include <glwidget.h>
#include <QtWidgets>
#include <QGLFormat>

#include <QApplication>
#include <QMenuBar>
#include <QGroupBox>
#include <QGridLayout>
#include <QSlider>
#include <QLabel>
#include <QTimer>

Window::Window()
{


    win = new QWidget;
    setCentralWidget(win);
    QGridLayout * layout = new QGridLayout();

    QGLFormat glFormat;
    glFormat.setVersion( 3, 2 );
    glFormat.setProfile( QGLFormat::CoreProfile );
    glFormat.setSampleBuffers( true );

    w = new GLWidget( glFormat );
    layout->addWidget(w,1,1);


    fileMenu = menuBar()->addMenu(tr("&File"));
    newFile = new QAction(tr("&New"), this);
    fileMenu->addAction(newFile);
    openFile = new QAction(tr("&Open"), this);
    fileMenu->addAction(openFile);

    QObject::connect(newFile, SIGNAL(triggered()), this, SLOT(close()));
    QObject::connect(openFile, SIGNAL(triggered()), this, SLOT(w->readFile("bunny.stl")));

    win->setLayout(layout);



}









