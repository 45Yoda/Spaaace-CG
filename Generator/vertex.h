//
// Created by yoda45 on 01-03-2018.
//

#ifndef PHASE1_VERTEX_H
#define PHASE1_VERTEX_H


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


#endif //PHASE1_VERTEX_H
