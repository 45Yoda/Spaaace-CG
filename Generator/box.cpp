//
// Created by yoda45 on 06-03-2018.
//

#include "box.h"
using std::vector;

vector<Vertex*> draw_xy(float x, float y, float z, int div);
vector<Vertex*> draw_xys(float x, float sx, float y, float sy, float z);


vector<Vertex*> box(float x, float y, float z, int div){
    vector<Vertex*> vertexes,aux;



    //Draw Front Face (A)(FF)
    aux = draw_xy(x,y,z/2,div);

    //Draw Back Face (B)(BF)

    //Draw Right Face (C)(RF)

    //Draw Left Face (D)(LF)

    //Draw Top Face (E)(T)

    //Draw Bottom Face (F)(B)



    return vertexes;
}

vector<Vertex*> draw_xy(float x, float y, float z, int div){
    vector<Vertex*> vertexes, aux;
    float ix, fx, sx; //initial x, final x, slice;
    float iy, fy, sy; //initial y, final y, stack;

    ix = -x/2; iy = 0;
    fx = x/2; fx = y;
    sx = x/div; sy = y/div;

    for(iy;iy<fy;iy += sy){
        for(ix;ix<fx;ix+=sx){
            aux = draw_xys(ix,sx,iy,sy,z);
            vertexes.insert(vertexes.end(),aux.begin(),aux.end());
        }
    }

    return vertexes;
}

vector<Vertex*> draw_xys(float x, float sx, float y, float sy, float z){

}