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

void Shape::readyUp() {

    int index = 0;
    float* array= (float *) malloc(sizeof(float) * vertexes.size() * 3);

    for (vector<Vertex *>::iterator iter = vertexes.begin(); iter != vertexes.end(); ++iter) {
        array[index] = (*iter)->getX();
        array[index+1] = (*iter)->getY();
        array[index+2] = (*iter)->getZ();
        index+=3;
    }

    glGenBuffers(1, &buff);
    glBindBuffer(GL_ARRAY_BUFFER, buff);
    glBufferData(GL_ARRAY_BUFFER,sizeof(float) * index, array, GL_STATIC_DRAW);

    free(array);
}

void Shape::draw(){
    glBindBuffer(GL_ARRAY_BUFFER, buff);
    glVertexPointer(3,GL_FLOAT,0,0);
    glDrawArrays(GL_TRIANGLES, 0, vertexes.size()*3);
}

vector<Vertex*> Shape::getVertexes(){
    return vertexes;
}


