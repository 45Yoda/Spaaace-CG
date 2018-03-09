//
// Created by yoda45 on 01-03-2018.
//

#ifndef SPAAACE_CG_SPHERE_H
#define SPAAACE_CG_SPHERE_H


class Vertex {
    public:
        Vertex(float x, float y, float z);
        float getX();
        float getY();
        float getZ();

    private:
        float x;
        float y;
        float z;
};


#endif //SPAAACE_CG_SPHERE_H
