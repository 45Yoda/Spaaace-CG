
#include "shape.h"


Shape::Shape(){

}

/*Shape::Shape(string i, vector<Point*> list){
    name = i;
    points = list;
}*/

Shape::Shape(vector<Point*> pList, vector<Point*> nList, vector<Point*> tList){

    points = pList;
    normals = nList;
    textures = tList;

}

/*string Shape::getName(){
    return name;
}*/

vector<Point*> Shape::getPoints(){
    return points;
}

vector<Point*> Shape::getNormals(){
    return normals;
}

vector<Point*> Shape::getTextures(){
    return textures;
}

Material* Shape::getColorComponent(){
    return colorComponent;
}

void Shape::setColorComponent(Material* c){
    colorComponent = c;
}

void Shape::readyUp(){

    int index = 0;

    float* point = (float*) malloc(sizeof(float) * points.size() * 3);
    float* normal = (float*) malloc(sizeof(float) * normals.size() * 3);
    float* texture = (float*) malloc(sizeof(float)* textures.size() * 2);

    //Set the Data
    for(vector<Point*>::const_iterator p_it = points.begin(); p_it != points.end(); ++p_it){
        point[index] = (*p_it)->getX();
        point[index+1] = (*p_it)->getY();
        point[index+2] = (*p_it)->getZ();
        index+=3;
    }

    pointSize = index;
    index = 0;
    for(vector<Point*>::const_iterator n_it = normals.begin(); n_it != normals.end(); ++n_it){
        normal[index] = (*n_it)->getX();
        normal[index+1] = (*n_it)->getY();
        normal[index+2] = (*n_it)->getZ();
        index+=3;
    }

    normalSize = index;
    index = 0;
    for(vector<Point*>::const_iterator t_it = textures.begin(); t_it != textures.end(); ++t_it){
        texture[index] = (*t_it)->getX();
        texture[index+1] = (*t_it)->getY();
        index+=2;
    }
    textureSize = index;


    //Generate and Bind the Point Buffer
    //Get a valid name
    glGenBuffers(3, buffers);
    //Bind the Buffer
    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    //Load the Data
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * pointSize * 3, point, GL_STATIC_DRAW);
    //Bind the Buffer
    glBindBuffer(GL_ARRAY_BUFFER, buffers[1]);
    //Load the Data
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * normalSize * 3, normal, GL_STATIC_DRAW);
    //Bind the Buffer
    glBindBuffer(GL_ARRAY_BUFFER, buffers[2]);
    //Load the Data
    glBufferData(GL_ARRAY_BUFFER, sizeof(float) * textureSize * 2, texture, GL_STATIC_DRAW);



    //The Data is in the Graphics Card, it isn't needed anymore
    free(point);
    free(normal);
    free(texture);
}

void Shape::loadTexture(string texture_file){

    unsigned int i, iwid, iheig;
    unsigned char * textData;

    ilEnable(IL_ORIGIN_SET);
    ilOriginFunc(IL_ORIGIN_LOWER_LEFT);
    ilGenImages(1,&i);
    ilBindImage(i);
    ilLoadImage((ILstring) texture_file.c_str());
    iwid = ilGetInteger(IL_IMAGE_WIDTH);
    iheig = ilGetInteger(IL_IMAGE_HEIGHT);
    ilConvertImage(IL_RGBA,IL_UNSIGNED_BYTE);
    textData = ilGetData();

    glGenTextures(1,&texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,iwid,iheig,0,GL_RGBA,GL_UNSIGNED_BYTE, textData);
    glBindTexture(GL_TEXTURE_2D,0);
}

void Shape::draw(){

    colorComponent->draw();

    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    //Set the Point Pointer to the point buffer
    glVertexPointer(3, GL_FLOAT, 0, (char*) NULL);

    if(normalSize){
        glBindBuffer(GL_ARRAY_BUFFER,buffers[1]);
        glNormalPointer(GL_FLOAT,0,0);
    }

    if(textureSize){
        glBindBuffer(GL_ARRAY_BUFFER,buffers[2]);
        glTexCoordPointer(2,GL_FLOAT,0,0);
        glBindTexture(GL_TEXTURE_2D,texture);
    }

    glEnable(GL_LIGHTING);
    //Draw all Triangles at once
    glDrawArrays(GL_TRIANGLES, 0, points.size()*3);
    glDisable(GL_LIGHTING);
    glBindTexture(GL_TEXTURE_2D,0);

}