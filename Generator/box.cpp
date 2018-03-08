//
// Created by yoda45 on 06-03-2018.
//

#include <algorithm>
#include "box.h"
using std::vector;

vector<Vertex*> draw_xy(float x, float y, float z, int div);
vector<Vertex*> draw_xys(float x, float sx, float y, float sy, float z);

vector<Vertex*> draw_yz(float x, float y, float z, int div);
vector<Vertex*> draw_yzs(float x, float y, float sy, float z, float sz);

vector<Vertex*> draw_xz(float x, float y, float z, int div);
vector<Vertex*> draw_xzs(float x, float sx, float y, float z, float sz);

vector<Vertex*> box(float x, float y, float z, int div){
    vector<Vertex*> vertexes,aux;



    //Draw Front Face (A)(FF)
    aux = draw_xy(x,y,z/2,div);
    vertexes.insert(vertexes.end(),aux.begin(),aux.end());

    //Draw Back Face (B)(BF)
    aux = draw_xy(x,y,-z/2,div);
    std::reverse(aux.begin(), aux.end()); //reverse the order of the vertexes to draw them backwards
    vertexes.insert(vertexes.end(),aux.begin(),aux.end());

    //Draw Right Face (C)(RF)
    aux = draw_yz(x/2,y,z,div);
    vertexes.insert(vertexes.end(),aux.begin(),aux.end());

    //Draw Left Face (D)(LF)
    aux = draw_yz(-x/2,y,z,div);
    std::reverse(aux.begin(),aux.end()); //reverse the order of the vertexes to draw them backwards
    vertexes.insert(vertexes.end(),aux.begin(),aux.end());

    //Draw Top Face (E)(T)
    aux = draw_xz(x,y,z,div);
    vertexes.insert(vertexes.end(),aux.begin(),aux.end());

    //Draw Bottom Face (F)(B)
    aux = draw_xz(x,0,z,div);
    std::reverse(aux.begin(),aux.end());
    vertexes.insert(vertexes.end(),aux.begin(),aux.end());


    return vertexes;
}

// draw front face and back face
vector<Vertex*> draw_xy(float x, float y, float z, int div){
    vector<Vertex*> vertexes, aux;
    float ix, fx, sx; //initial x, final x, slice;
    float iy, fy, sy; //initial y, final y, stack;

    ix = -x/2; iy = 0;
    fx = x/2; fy= y;
    sx = x/div; sy = y/div;

    for(iy;iy<fy;iy += sy){
        for(ix;ix<fx;ix+=sx){
            aux = draw_xys(ix,sx,iy,sy,z);
            vertexes.insert(vertexes.end(),aux.begin(),aux.end());
        }
    }

    return vertexes;
}

// auxiliary function to draw_xy, draws all slices and stacks
vector<Vertex*> draw_xys(float x, float sx, float y, float sy, float z){
    vector<Vertex*> vertexes;

    //Lower triangle;
    vertexes.push_back(new Vertex(x,y,z));
    vertexes.push_back(new Vertex(x+sx, y, z));
    vertexes.push_back(new Vertex(x+sx, y+sy, z));

    //Upper triangle;
    vertexes.push_back(new Vertex(x,y,z));
    vertexes.push_back(new Vertex(x+sx, y+sy, z));
    vertexes.push_back(new Vertex(x, y+sy, z));

    return vertexes;
}

// draw right face and left face
vector<Vertex*> draw_yz(float x, float y, float z, int div){
    vector<Vertex*> vertexes, aux;
    float iy, fy, sy; //initial y, final y, stack;
    float iz, fz, sz; //initial z, final z, shift;

    iy = 0; iz = -z/2; //ez peasy
    fy = y; fz = z/2;
    sy = y/div; sz = z/div;



    for(iy;iy<fy;iy += sy){
        for(iz;iz<fz;iz+=sz){
            aux = draw_yzs(x,iy,sy,iz,sz);
            vertexes.insert(vertexes.end(),aux.begin(),aux.end());
        }
    }

    return vertexes;
}

// auxiliary function to draw_yzs, draw all stacks and shifts
vector<Vertex*> draw_yzs(float x, float y, float sy, float z, float sz){
    vector<Vertex*> vertexes;

    //Lower triangle
    vertexes.push_back(new Vertex(x,y,z+sz));
    vertexes.push_back(new Vertex(x,y,z));
    vertexes.push_back(new Vertex(x,y+sy,z+sz));

    //Upper triangle
    vertexes.push_back(new Vertex(x,y+sy,z+sz));
    vertexes.push_back(new Vertex(x,y,z));
    vertexes.push_back(new Vertex(x,y+sy,z));

    return vertexes;
}

// draw bottom and top face
vector<Vertex*> draw_xz(float x, float y, float z, int div){
    vector<Vertex*> vertexes, aux;
    float ix, fx, sx; //initial x, final x, slice;
    float iz, fz, sz; //initial z, final z, shift;

    ix = -x/2; iz = -z/2; //ez peasy
    fx = x/2; fz = z/2;
    sx = x/div; sz = z/div;



    for(ix;ix<fx;ix += sx){
        for(iz;iz<fz;iz+=sz){
            aux = draw_xzs(x,sx,y,iz,sz);
            vertexes.insert(vertexes.end(),aux.begin(),aux.end());
        }
    }

    return vertexes;
}

// auxiliary function to draw_xzs, draw all slices and shifts
vector<Vertex*> draw_xzs(float x, float sx, float y, float z, float sz){
    vector<Vertex*> aux;

    aux.push_back(new Vertex(x,y,z));
    aux.push_back(new Vertex(x,y,z+sz));
    aux.push_back(new Vertex(x+sx,y,z+sz));

    aux.push_back(new Vertex(x,y,z));
    aux.push_back(new Vertex(x+sx,y,z+sz));
    aux.push_back(new Vertex(x+sx,y,z));

    return aux;
}