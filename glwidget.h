#ifndef GLWIDGET_H
#define GLWIDGET_H

#include "glheaders.h" // Must be included before QT opengl headers
#include <QGLWidget>

#include <QOpenGLBuffer>
#include <QOpenGLShaderProgram>

#include "glwidget.h"
#include "glm/glm/gtc/matrix_transform.hpp"
#include "glm/glm/gtx/transform.hpp"

class GLWidget : public QGLWidget
{
    Q_OBJECT
public:
    GLWidget( const QGLFormat& format, QWidget* parent = 0 );
    glm::mat4 Model;
    void setupCamera();
    std::vector<float> readFile(std::string fileName);
    void loadImage(std::vector<float> points);
    void stopDraw();
    bool rotation;
    bool translation;
    bool scale;
    void rotateImage(bool direction, int axis); //rotate image
    void translateImage(bool direction); //translate image
    void scaleImage(bool direction); //scale image



protected:
    virtual void initializeGL();
    virtual void resizeGL( int w, int h );
    virtual void paintGL();


private:
    bool prepareShaderProgram( const QString& vertexShaderPath,
                               const QString& fragmentShaderPath );
    unsigned long numTri;
    QOpenGLShaderProgram m_shader;
    QOpenGLBuffer m_vertexBuffer;
    glm::mat4 Projection;
    glm::mat4 View;
    glm::mat4 MVP;
    bool canDraw;


};

#endif // GLWIDGET_H
