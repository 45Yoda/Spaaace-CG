//
// Created by yoda45 on 01-03-2018.
//

#include "plane.h"

using std::vector;


vector<Vertex*> plane(float size){
    vector<Vertex*> vertexes;
    float side;

    //calculate side of square

    side = size/2;
/*
    // posição do plano centrada com o eixo
    if((size % 2) == 0){
        xz = (float)size/2;
    }
    else{
        xz = (float)size/2 +0.5;
    }
*/

    //Push vertexes into vector

    //First triangle
    vertexes.push_back(new Vertex(side,0.0f,side));
    vertexes.push_back(new Vertex(side,0.0f,-side));
    vertexes.push_back(new Vertex(-side,0.0f,side));

    //Second triangle
    vertexes.push_back(new Vertex(-side,0.0f,-side));
    vertexes.push_back(new Vertex(-side,0.0f,side));
    vertexes.push_back(new Vertex(side,0.0f,-side));

    return vertexes;

}