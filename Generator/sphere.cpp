//
// Created by jose on 3/8/18.
//

#include <algorithm>
#include <cmath>
#include "sphere.h"
using std::vector

vector<Vertex*> sphere(float radius, int slices, int stacks) {

    vector<Vertex*> vertexes;

    int i,j,x,nextX,infX,nextInfX,supX,nextSupX,z,nextZ,infZ,nextInfZ,supZ,nextSupZ;
    float curve;

    //Horizontal and vertical angular shifts
    float shiftH = (M_PI*2)/slices;
    float shiftV = M_PI/stacks;

    float height = radius*sin((M_PI/2)-shiftV); //Height of stacks
    float topHeight = radius;

    for(i=0;i<slices;i++) {

        //Actual coords
        x = radius * sin(i * shiftH);
        z = radius * cos(i * shiftH);

        //Next coords
        nextX = radius * sin((i + 1) * shiftH);
        nextZ = radius * cos((i + 1) * shiftH);

        //The triangles will be printed from top to bottom
        for (j = 1; j < stacks + 2; j++) {

            //Inferior triangle coords
            curve = cos(asin(height / radius));
            infX = x * curve;
            infZ = z * curve;
            nextInfX = nextX * curve;
            nextInfZ = nextZ * curve;

            //Superior triangle coords
            curve = cos(asin(topHeight / radius));
            supX = x * curve;
            supZ = z * curve;
            nextSupX = nextX * curve;
            nextSupZ = nextZ * curve;

            vertexes.push_back(new Vertex(infX, height, infZ));
            vertexes.push_back(new Vertex(nextInfX, height, nextInfZ));
            vertexes.push_back(new Vertex(supX, topHeight, supZ));

            vertexes.push_back(new Vertex(supX, topHeight, supZ));
            vertexes.push_back(new Vertex(nextInfX, height, nextInfZ));
            vertexes.push_back(new Vertex(nextSupX, topHeight, nextSupZ));

            //Update the height to print triangles below
            topHeight = height;
            height = radius * sin((M_PI / 2) - shiftV);

        }
        //Restart the height to the initial values so we can print another slice
        height = radius * sin((M_PI / 2) - shiftV);
        topHeight = radius;
    }

    return vertexes;


}



