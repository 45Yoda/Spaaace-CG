#define _USE_MATH_DEFINES
#include <cmath>
#include <GL/glut.h>
#include <vector>
#include "Shape.h"
#include "../tinyxml2.h"
#include "../Generator/vertex.h"

using namespace std;
using namespace tinyxml2;

vector<Shape*> shapes;
int total_shapes = 0;
int line = GL_LINE;
float angleX = 1.0, angleY = 1.0;

void changeSize(int w, int h) {

    // Prevent a divide by zero, when window is too short
    // (you cant make a window with zero width).
    if(h == 0)
        h = 1;

    // compute window's aspect ratio
    float ratio = w * 1.0 / h;

    // Set the projection matrix as current
    glMatrixMode(GL_PROJECTION);
    // Load Identity Matrix
    glLoadIdentity();

    // Set the viewport to be the entire window
    glViewport(0, 0, w, h);

    // Set perspective
    gluPerspective(45.0f ,ratio, 1.0f ,1000.0f);

    // return to the model view matrix mode
    glMatrixMode(GL_MODELVIEW);
}



void renderScene(void) {

    int i = 0;
    float x,y,z;

    // clear buffers
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // set the camera
    glLoadIdentity();
    gluLookAt(5.0,5.0,5.0,
              0.0,0.0,0.0,
              0.0f,1.0f,0.0f);

    // put drawing instructions here
    glEnable(GL_CULL_FACE);
    glPolygonMode(GL_FRONT_AND_BACK, line);

    glRotatef(angleX,0,1,0);
    glRotatef(angleY,0,0,1);

    glColor3f(255,255,255);

    for (vector<Shape*>::iterator shape_it = shapes.begin(); shape_it != shapes.end(); ++shape_it){
        vector<Vertex*> vertexes = (*shape_it)->getVertexes();
        glBegin(GL_TRIANGLES);
        for(vector<Vertex*>::iterator iter = vertexes.begin(); iter != vertexes.end(); ++iter){
            x = (*iter)->getX();
            y = (*iter)->getY();
            z = (*iter)->getZ();
            glVertex3f(x,y,z);
            i++;
        }
        glEnd();
    }

    // End of frame
    glutSwapBuffers();
}