
#include "shape.h"


Shape::Shape(){

}

Shape::Shape(string i, vector<Point*> list){
    name = i;
    points = list;
}

string Shape::getName(){
    return name;
}

vector<Point*> Shape::getPoints(){
    return points;
}

GLuint Shape::getPointBuffer(){
    return buffer;
}

void Shape::readyUp(){

    int index = 0;
    float* point = (float*) malloc(sizeof(float) * points.size() * 3);

    //Set the Data
    for(vector<Point*>::const_iterator v_it = points.begin(); v_it != points.end(); ++v_it){
        point[index] = (*v_it)->getX();
        point[index+1] = (*v_it)->getY();
        point[index+2] = (*v_it)->getZ();
        index+=3;
    }


    //Generate and Bind the Point Buffer
    //Get a valid name
    glGenBuffers(1, &buffer);
    //Bind the Buffer
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    //Load the Data
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * index, point, GL_STATIC_DRAW);

    //The Data is in the Graphics Card, it isn't needed anymore
    free(point);
}

void Shape::draw(){
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    //Set the Point Pointer to the point buffer
    glVertexPointer(3, GL_FLOAT, 0, (char*) NULL);
    //Draw all Triangles at once
    glDrawArrays(GL_TRIANGLES, 0, points.size()*3);
}