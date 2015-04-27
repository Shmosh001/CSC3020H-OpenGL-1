#include "glwidget.h"
#include "glm/glm/gtc/matrix_transform.hpp"
#include "glm/glm/gtx/transform.hpp"

#include <QCoreApplication>
#include <QKeyEvent>
#include <stdexcept>
#include <fstream>

#define VERT_SHADER ":/simple.vert"
#define FRAG_SHADER ":/simple.frag"

GLWidget::GLWidget( const QGLFormat& format, QWidget* parent )
    : QGLWidget( format, parent ),
      m_vertexBuffer( QOpenGLBuffer::VertexBuffer )
{
}

void GLWidget::initializeGL()
{
    //allows the stl image to be drawn
    canDraw = true;

     rotation = true;
     translation = false;
     scale = false;

    // Resolve OpenGL functions
    glewExperimental = true;
    GLenum GlewInitResult = glewInit();
    if (GlewInitResult != GLEW_OK) {
        const GLubyte* errorStr = glewGetErrorString(GlewInitResult);
        size_t size = strlen(reinterpret_cast<const char*>(errorStr));
        qDebug() << "Glew error "
                 << QString::fromUtf8(
                        reinterpret_cast<const char*>(errorStr), size);
    }

    // get context opengl-version
    qDebug() << "Widget OpenGl: " << format().majorVersion() << "." << format().minorVersion();
    qDebug() << "Context valid: " << context()->isValid();
    qDebug() << "Really used OpenGl: " << context()->format().majorVersion() << "." << context()->format().minorVersion();
    qDebug() << "OpenGl information: VENDOR:       " << (const char*)glGetString(GL_VENDOR);
    qDebug() << "                    RENDERDER:    " << (const char*)glGetString(GL_RENDERER);
    qDebug() << "                    VERSION:      " << (const char*)glGetString(GL_VERSION);
    qDebug() << "                    GLSL VERSION: " << (const char*)glGetString(GL_SHADING_LANGUAGE_VERSION);

    QGLFormat glFormat = QGLWidget::format();
    if ( !glFormat.sampleBuffers() )
        qWarning() << "Could not enable sample buffers";

    // Set the clear color to black
    glClearColor( 0.0f, 0.0f, 0.0f, 1.0f );

    // we need a VAO in core!
    GLuint VAO;
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO);

    // We need us some vertex data. Start simple with a triangle ;-)
//    float points[] = { -0.5f, -0.5f, 0.0f, 1.0f,
//                        0.5f, -0.5f, 0.0f, 1.0f,
//                        0.0f,  0.5f, 0.0f, 1.0f };

    //display bunny
    std::vector<float> pointsArr = readFile("bunny.stl");
    float *points = &pointsArr[0];


    m_vertexBuffer.create();
    m_vertexBuffer.setUsagePattern( QOpenGLBuffer::StaticDraw );
    if ( !m_vertexBuffer.bind() )
    {
        qWarning() << "Could not bind vertex buffer to the context";
        return;
    }
    if(canDraw == true)
    {
        m_vertexBuffer.allocate( points, numTri * 3 * 4 * sizeof( float ) );
    }


    qDebug() << "Attempting vertex shader load from " << VERT_SHADER;
    qDebug() << "Attempting fragment shader load from " << FRAG_SHADER;

    // Prepare a complete shader program...
    if ( !prepareShaderProgram( VERT_SHADER, FRAG_SHADER) )
        std::runtime_error("Failed to load shader");
    // Bind the shader program so that we can associate variables from
    // our application to the shaders
    if ( !m_shader.bind() )
    {
        qWarning() << "Could not bind shader program to context";
        return;
    }
    // Enable the "vertex" attribute to bind it to our currently bound
    // vertex buffer.
    m_shader.setAttributeBuffer( "vertex", GL_FLOAT, 0, 4 );
    m_shader.enableAttributeArray( "vertex" );
    glUniform4f(glGetUniformLocation(m_shader.programId(),"fcolor"),0.0f,1.0f,0.0f,1.0f);

    //set up camera
    setupCamera();
}

void GLWidget::resizeGL( int w, int h )
{
    // Set the viewport to window dimensions
    glViewport( 0, 0, w, qMax( h, 1 ) );
}

void GLWidget::paintGL()
{
    // Clear the buffer with the current clearing color
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

    // Draw stuff
    if(canDraw == true)
    {
        glDrawArrays( GL_TRIANGLES, 0, 3 * numTri);
    }

}



bool GLWidget::prepareShaderProgram( const QString& vertexShaderPath,
                                     const QString& fragmentShaderPath )
{
    // First we load and compile the vertex shader...
    bool result = m_shader.addShaderFromSourceFile( QOpenGLShader::Vertex, vertexShaderPath );
    if ( !result )
        qWarning() << m_shader.log();

    // ...now the fragment shader...
    result = m_shader.addShaderFromSourceFile( QOpenGLShader::Fragment, fragmentShaderPath );
    if ( !result )
        qWarning() << m_shader.log();

    // ...and finally we link them to resolve any references.
    result = m_shader.link();
    if ( !result )
        qWarning() << "Could not link shader program:" << m_shader.log();

    return result;
}

//set up camera to view stl image
void GLWidget::setupCamera()
{
    // Projection matrix : 45° Field of View, 4:3 ratio, display range : 0.1 unit <-> 100 units
    Projection = glm::perspective(45.0f, 4.0f / 3.0f, 0.1f, 100.0f);
    // Camera matrix
    View = glm::lookAt(
        glm::vec3(0.5,0.5,0.5), // Camera is at (4,3,3), in World Space
        glm::vec3(0,0,0), // and looks at the origin
        glm::vec3(0,1,0)  // Head is up (set to 0,-1,0 to look upside-down)
    );
    // Model matrix : an identity matrix (model will be at the origin)
    Model      = glm::mat4(1.0f);  // Changes for each model !
    // Our ModelViewProjection : multiplication of our 3 matrices
    MVP        = Projection * View * Model; // Remember, matrix multiplication is the other way around

    // Get a handle for our "MVP" uniform.
    // Only at initialisation time.
    GLuint MatrixID = glGetUniformLocation(m_shader.programId(), "MVP");

    // Send our transformation to the currently bound shader,
    // in the "MVP" uniform
    // For each model you render, since the MVP will be different (at least the M part)
    glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
}

//reads a stl file
std::vector<float> GLWidget::readFile(std::string fileName)
{
    using namespace std;
     //read stl file
    ifstream input(fileName.c_str(), ios::binary);

    //read header file
    char fileHeader [80] = "";
    input.read(fileHeader, 80);

    //read 4 byte ulong
    char nTri[4];
    input.read (nTri, 4);

    //get number of triangles
    unsigned long nTriLong;
    nTriLong = *((unsigned long*)nTri);
    numTri = nTriLong;

    //store float values for vetecies
    std::vector<float> v;

    //reading all triangles
    for(int i = 0; i < nTriLong; i++)
    {
        if (input){
            char facet[50];
            input.read (facet, 50);

            char vertex1[4] = {facet[12],facet[13], facet[14], facet[15]};
            v.push_back(*((float*)vertex1));
            char vertex2[4] = {facet[16],facet[17], facet[18], facet[19]};
            v.push_back(*((float*)vertex2));
            char vertex3[4] = {facet[20],facet[21], facet[22], facet[23]};
            v.push_back(*((float*)vertex3));
            v.push_back(1.0f);

            char vertex4[4] = {facet[24],facet[25], facet[26], facet[27]};
            v.push_back(*((float*)vertex4));
            char vertex5[4] = {facet[28],facet[29], facet[30], facet[31]};
            v.push_back(*((float*)vertex5));
            char vertex6[4] = {facet[32],facet[33], facet[34], facet[35]};
            v.push_back(*((float*)vertex6));
            v.push_back(1.0f);

            char vertex7[4] = {facet[36],facet[37], facet[38], facet[39]};
            v.push_back(*((float*)vertex7));
            char vertex8[4] = {facet[40],facet[41], facet[42], facet[43]};
            v.push_back(*((float*)vertex8));
            char vertex9[4] = {facet[44],facet[45], facet[46], facet[47]};
            v.push_back(*((float*)vertex9));
            v.push_back(1.0f);
        }
        else{
            break;
        }
    }
    return v;
}

//loads an image
void GLWidget::loadImage(std::vector<float> pointsArr)
{

    canDraw = true; //allows image to be drawn
    m_vertexBuffer.create();
    m_vertexBuffer.setUsagePattern( QOpenGLBuffer::StaticDraw );
    if ( !m_vertexBuffer.bind() )
    {
        qWarning() << "Could not bind vertex buffer to the context";
        return;
    }
    float *points = &pointsArr[0];
    m_vertexBuffer.allocate( points, numTri * 3 * 4 * sizeof( float ) );

}

//stops image being drawn
void GLWidget::stopDraw()
{
    canDraw = false;
}

void GLWidget::rotateImage(bool direction, int axis)
{
    float amount = 15;
    if(direction == false)
    {
        amount = -15;
    }

    //x-axis
    if(axis == 1)
    {
        this->Model = glm::rotate(this->Model, glm::radians(amount), glm::vec3(1.0f,0,0));
        MVP = Projection * View * this->Model;
        GLuint MatrixID = glGetUniformLocation(m_shader.programId(), "MVP");
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
    }

    //y-axis
    if(axis == 2)
    {
        this->Model = glm::rotate(this->Model, glm::radians(amount), glm::vec3(0,1.0f,0));
        MVP = Projection * View * this->Model;
        GLuint MatrixID = glGetUniformLocation(m_shader.programId(), "MVP");
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
    }

    //z-axis
    if(axis == 3)
    {
        this->Model = glm::rotate(this->Model, glm::radians(amount), glm::vec3(0,0,1.0f));
        MVP = Projection * View * this->Model;
        GLuint MatrixID = glGetUniformLocation(m_shader.programId(), "MVP");
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
    }

    this->repaint();

}

void GLWidget::translateImage(bool direction)
{

}

void GLWidget::scaleImage(bool direction)
{

}




