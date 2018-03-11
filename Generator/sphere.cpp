#include "sphere.h"
#include "vertex.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

using std::vector;



std::vector<Vertex*> sphere(double radius, int slices, int stacks) {

    std::vector<Vertex*> vertexes;
    int i, j;
    float angle1 = 0, angle2 = 0;
    float jumpH = M_PI / stacks;
    float jumpV = (2 * M_PI) / slices;
    float x1, y1, z1, x2, y2, z2, x3, y3, z3;

    for (i = 0; i < stacks; i++) {
        angle1 = 0;

        for (j = 0; j < slices; j++) {

            x1 = radius*sin(angle2)*sin(angle1);
            y1 = radius*cos(angle2);
            z1 = radius*cos(angle1)*sin(angle2);

            x2 = radius*sin(angle2 + jumpH)*sin(angle1 + jumpV);
            y2 = radius*cos(angle2 + jumpH);
            z2 = radius*cos(angle1 + jumpV)*sin(angle2 + jumpH);

            x3 = radius*sin(angle2 + jumpH)*sin(angle1);
            y3 = radius*cos(angle2 + jumpH);
            z3 = radius*cos(angle1)*sin(angle2 + jumpH);

            vertexes.push_back(new Vertex(x1, y1, z1));
            vertexes.push_back(new Vertex(x2, y2, z2));
            vertexes.push_back(new Vertex(x3, y3, z3));

            angle1 += jumpV;
        }
        angle2 += jumpH;
    }

    return vertexes;
}
