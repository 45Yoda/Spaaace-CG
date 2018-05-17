#include "box.h"

using std::vector;

vector<Point*> box(float x, float y, float z, int div){

    vector<Point*> points;
    float shiftX = x/div;
    float shiftY = y/div;
    float shiftZ = z/div;
    x = x/2;
    y = y/2;
    z = z/2;


    for(int i=0;i<div;i++){
        for(int j=0;j<div;j++){
            //Front
            points.push_back(new Point(-x + (j*shiftX),-y + (i*shiftY),z));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y + (i*shiftY),z));
            points.push_back(new Point(-x + (j*shiftX),(-y+shiftY) + (i*shiftY),z));

            points.push_back(new Point(-x + (j*shiftX),(-y+shiftY) + (i*shiftY),z));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y + (i*shiftY),z));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),(-y+shiftY) + (i*shiftY),z));


            //Back
            points.push_back(new Point(-x + (j*shiftX),-y + (i*shiftY),-z));
            points.push_back(new Point(-x + (j*shiftX),(-y+shiftY) + (i*shiftY),-z));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y + (i*shiftY),-z));

            points.push_back(new Point(-x + (j*shiftX),(-y+shiftY) + (i*shiftY),-z));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),(-y+shiftY) + (i*shiftY),-z));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y + (i*shiftY),-z));

            //Right
            points.push_back(new Point(x,-y + (i*shiftY),-z + (j*shiftZ)));
            points.push_back(new Point(x,(-y+shiftY) + (i*shiftY),-z +(j*shiftZ)));
            points.push_back(new Point(x,-y + (i*shiftY),(-z+shiftZ) + (j*shiftZ)));
            points.push_back(new Point(x,(-y+shiftY) + (i*shiftY),-z + (j*shiftZ)));
            points.push_back(new Point(x,(-y+shiftY) + (i*shiftY),(-z+shiftZ) + (j*shiftZ)));
            points.push_back(new Point(x,-y + (i*shiftY),(-z+shiftZ) + (j*shiftZ)));

            //Left
            points.push_back(new Point(-x,-y + (i*shiftY),-z + (j*shiftZ)));
            points.push_back(new Point(-x,-y + (i*shiftY),(-z+shiftZ) + (j*shiftZ)));
            points.push_back(new Point(-x,(-y+shiftY) + (i*shiftY),-z +(j*shiftZ)));

            points.push_back(new Point(-x,(-y+shiftY) + (i*shiftY),-z + (j*shiftZ)));
            points.push_back(new Point(-x,-y + (i*shiftY),(-z+shiftZ) + (j*shiftZ)));
            points.push_back(new Point(-x,(-y+shiftY) + (i*shiftY),(-z+shiftZ) + (j*shiftZ)));

            //Top
            points.push_back(new Point(-x + (j*shiftX),y,-z + (i*shiftZ)));
            points.push_back(new Point(-x + (j*shiftX),y,(-z+shiftZ) + (i*shiftZ)));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),y,-z + (i*shiftZ)));

            points.push_back(new Point(-x + (j*shiftX),y,(-z+shiftZ) + (i*shiftZ)));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),y,(-z+shiftZ) + (i*shiftZ)));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),y,-z + (i*shiftZ)));

            //Bottom
            points.push_back(new Point(-x + (j*shiftX),-y,-z + (i*shiftZ)));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y,-z + (i*shiftZ)));
            points.push_back(new Point(-x + (j*shiftX),-y,(-z+shiftZ) + (i*shiftZ)));

            points.push_back(new Point(-x + (j*shiftX),-y,(-z+shiftZ) + (i*shiftZ)));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y,-z + (i*shiftZ)));
            points.push_back(new Point((-x+shiftX) + (j*shiftX),-y,(-z+shiftZ) + (i*shiftZ)));
        }
    }
    return points;
}