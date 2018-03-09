#ifndef SPAAACE_CG_SPHERE_H
#define SPAAACE_CG_SPHERE_H

#include <vector>
#include "Vertex.h"

/**
 * Generates a sphere, centered in the origin
 * made with triangles
 * @param radius of the sphere
 * @param slices
 * @param stacks
 * @return vector with generated vertexes for sphere
 */
std::vector<Vertex*> sphere(float radius, int slices, int stacks);

#endif //SPAAACE_CG_SPHERE_H
