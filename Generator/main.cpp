#include <iostream>
#include <cstring>
#include <fstream>
#include <vector>
#include "Vertex.h"
#include "plane.h"
#include "box.h"
#include "cone.h"


using std::ofstream;
using std::string;
using std::vector;

void drawPlane(float size, string name){
    ofstream file(name);
    char buffer[1024];
    vector<Vertex*> vertexes = plane(size);

    for(Vertex* v: vertexes){
        sprintf(buffer,"%f %f %f\n",v->getX(),v->getY(),v->getZ());
        file << buffer;
    }
    file.close();
}

void drawBox(float x, float y, float z, int div, string name){
    ofstream file(name);
    char buffer[1024];
    vector<Vertex*> vertexes = box(x,y,z,div);

    for(Vertex* v: vertexes){
        sprintf(buffer,"%f %f %f\n",v->getX(),v->getY(),v->getZ());
        file << buffer;
    }
    file.close();
}

void drawCone(float radius, float height, int slices, int stacks, string name){
    ofstream file(name);
    char buffer[1024];
    vector<Vertex*> vertexes = cone(radius,height,slices,stacks);

    for(Vertex* v: vertexes){
        sprintf(buffer,"%f %f %f\n",v->getX(),v->getY(),v->getZ());
        file << buffer;
    }

    file.close();
}

int main(int argc, char** argv) {

    if(argc < 2)
        std::cout << "fuck";
        //print_help();
    else if(!strcmp(argv[1],"plane") && argc == 4) {
        std::cout << "plane";
        drawPlane(atof(argv[2]), argv[3]);
    }
    else if(!strcmp(argv[1],"box") && (argc == 6 || argc == 7 )) {
        std::cout << "box";

        if (argc == 6) {  //No divisions
            drawBox(atof(argv[2]),
                    atof(argv[3]),
                    atof(argv[4]),
                    1,
                    argv[5]);
        }

        else{  //Divisions
            drawBox(atof(argv[2]),
                    atof(argv[3]),
                    atof(argv[4]),
                    atof(argv[5]),
                    argv[6]);

        }
    }
    else if(!strcmp(argv[1],"sphere") && argc == 6) {
        std::cout << "placeholder";
        //drawSphere(argv[2],argv[3],argv[4],argv[5]);
    }
    else if(!strcmp(argv[1],"cone") && argc == 7){
        std::cout << "cone";
        drawCone(atof(argv[2]),atof(argv[3]),atoi(argv[4]),atoi(argv[5]),argv[6]);
        }
    else
        std::cout << "placeholder";
        //print_help();

    return 0;
}

