#include <OpenGL/OpenGL.h>
#include "shape.h"


Shape::Shape(){

}

Shape::Shape(string i, vector<Vertex*> list){
    name = i;
    vertexes = list;
}

string Shape::getName(){
    return name;
}

vector<Vertex*> Shape::getVertexes(){
    return vertexes;
}

GLuint Shape::getVertexBuffer(){
    return buffer;
}

void Shape::prepare(){

    int index = 0;
    float* vertex = (float*) malloc(sizeof(float) * vertexes.size() * 3);

    for(vector<Vertex*>::const_iterator iter = vertexes.begin(); iter != vertexes.end(); ++iter){
        vertex[index] = (*iter)->getX();
        vertex[index+1] = (*iter)->getY();
        vertex[index+2] = (*iter)->getZ();
        index+=3;
    }

    glGenBuffers(1, &buffer);
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * index, vertex, GL_STATIC_DRAW);

    free(vertex);
}

void Shape::draw(){
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glVertexPointer(3, GL_FLOAT, 0, 0);
    glDrawArrays(GL_TRIANGLES, 0, vertexes.size()*3);
}