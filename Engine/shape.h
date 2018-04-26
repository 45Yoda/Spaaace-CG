#ifndef __SHAPE_H__
#define __SHAPE_H__

#include <string>
#include <vector>
#include <GL/glut.h>
#include "../Generator/vertex.h"

using namespace std;

class Shape{

    string name;
    vector<Vertex*> vertexes;
    GLuint buffer;
    public:
        Shape();
        Shape(string,vector<Vertex*>);
        string getName();
        vector<Vertex*> getVertexes();
        GLuint getVertexBuffer();
        void prepare();
        void draw();
};

#endif