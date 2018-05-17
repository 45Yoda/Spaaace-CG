//
// Created by yoda45 on 01-03-2018.
//

#include "plane.h"

using std::vector;


vector<Point*> plane(float size){
    vector<Point*> points;
    float side;

    //calculate side of square

    side = size/2;


    //Push points into vector

    //First triangle
    points.push_back(new Point(side,0.0f,side));
    points.push_back(new Point(side,0.0f,-side));
    points.push_back(new Point(-side,0.0f,side));

    //Second triangle
    points.push_back(new Point(-side,0.0f,-side));
    points.push_back(new Point(-side,0.0f,side));
    points.push_back(new Point(side,0.0f,-side));

    return points;

}