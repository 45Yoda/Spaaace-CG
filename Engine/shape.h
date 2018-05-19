#ifndef __SHAPE_H__
#define __SHAPE_H__

#define GL_GLEXT_PROTOTYPES


#include <string>
#include <vector>
#include <IL/il.h>
#include <GL/glut.h>
#include "../Generator/point.h"
#include "material.h"


using namespace std;

class Shape{

    vector<Point*> points;
    vector<Point*> normals;
    vector<Point*> textures;
    Material* colorComponent;
    int pointSize=0,normalSize=0,textureSize=0;
    GLuint buffers[3];
    GLuint texture;
    public:
        Shape();
        Shape(vector<Point*>, vector<Point*>, vector<Point*>);
        vector<Point*> getPoints();
        vector<Point*> getNormals();
        vector<Point*> getTextures();
        Material* getColorComponent();
        void setColorComponent(Material*);
        void readyUp();
        void loadTexture(string);
        void draw();
};

#endif