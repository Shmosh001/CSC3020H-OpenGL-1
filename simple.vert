#version 330
in vec3 vertex;
uniform mat4 MVP;

void main( void )
{
    vec4 v = vec4(vertex,1);
    gl_Position = MVP * v;

}
