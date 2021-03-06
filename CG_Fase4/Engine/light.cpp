//
// Created by yoda45 on 5/17/18.
//
#ifdef __APPLE__
    #include <GLUT/glut.h>
#endif
#include <GL/glut.h>
#include "light.h"

Light::Light(){
}

Light::Light(bool type, Point* p){
    pointType = type;
    point = p;
}

bool Light::getType(){
    return pointType;
}

Point* Light::getPoint(){
    return point;
}

void Light::setType(bool type){
    pointType = type;
}

void Light::setPoint(Point * p){
    point = p;
}

void Light::draw(){

    GLfloat amb[4] = {0.1,0.1,0.1,1};
    GLfloat diff[4] = {1,1,1,0};
    GLfloat pos[4] = {point->getX(), point->getY(), point->getZ(), (float) pointType};

    //light position
    glLightfv(GL_LIGHT0,GL_POSITION,pos);

    //light colors
    //ambient
    glLightfv(GL_LIGHT0,GL_AMBIENT,amb);
    //diffuse
    glLightfv(GL_LIGHT0,GL_DIFFUSE,diff);
    //specular and emissive?
}