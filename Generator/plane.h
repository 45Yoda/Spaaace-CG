//
// Created by yoda45 on 01-03-2018.
//

#ifndef PHASE1_PLANE_H
#define PHASE1_PLANE_H

#include "vertex.h"
#include <vector>

/**
 * Generates a square in the XZ plane, centered in the origin
 * made with 2 triangles
 * @param size of square
 * @return vector with generated vertexes for plane
 */

std::vector<Vertex*> plane(float size);


#endif //PHASE1_PLANE_H
