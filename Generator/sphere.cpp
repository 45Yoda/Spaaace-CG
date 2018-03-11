#include "sphere.h"
#include "vertex.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

using std::vector;



std::vector<Vertex*> sphere(float radius, int slices, int stacks) {

    std::vector<Vertex*> vertexes;
    int i, j;
    float angleH = 0, angleV = 0;
    float shiftH = M_PI / stacks;
    float shiftV = (2 * M_PI) / slices;
    float x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4;

    for (i = 0; i < stacks; i++) {
        angleH = shiftH * i;

        for (j = 0; j < slices; j++) {

            angleV = shiftV * j;

            x1 = radius * sin(angleV) * sin(angleH);
            y1 = radius * cos(angleH);
            z1 = radius * sin(angleH) * cos(angleV);

            x2 = radius * sin(angleH) * sin(angleV + shiftV);
            y2 = radius * cos(angleH);
            z2 = radius * sin(angleH) * cos(angleV + shiftV);

            x3 = radius * sin(angleH + shiftH) * sin(angleV + shiftV);
            y3 = radius * cos(angleH + shiftH);
            z3 = radius * sin(angleH + shiftH) * cos(angleV + shiftV);

            x4 = radius * sin(angleH + shiftH) * sin(angleV);
            y4 = radius * cos(angleH + shiftH);
            z4 = radius * sin(angleH + shiftH) * cos(angleV);


            vertexes.push_back(new Vertex(x1, y1, z1));
            vertexes.push_back(new Vertex(x2, y2, z2));
            vertexes.push_back(new Vertex(x3, y3, z3));

            vertexes.push_back(new Vertex(x1,y1,z1));
            vertexes.push_back(new Vertex(x3,y3,z3));
            vertexes.push_back(new Vertex(x4,y4,z4));
        }
    }

    return vertexes;
}
