#ifndef __SHAPE_H__
#define __SHAPE_H__

#define GL_GLEXT_PROTOTYPES


#include <string>
#include <vector>
#include <GL/glut.h>
#include "../Generator/point.h"



using namespace std;

class Shape{

    string name;
    vector<Point*> points;
    GLuint buffer;
    public:
        Shape();
        Shape(string,vector<Point*>);
        string getName();
        vector<Point*> getPoints();
        GLuint getPointBuffer();
        void readyUp();
        void draw();
};

#endif