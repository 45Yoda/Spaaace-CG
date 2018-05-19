//
// Created by yoda45 on 4/3/18.
//

#include <iostream>
#include <fstream>
#include <sstream>
#include "parser.h"
#include "material.h"

int total = 0;

Group* myChild(Group* parent){

    Group* child = new Group(total++);
    parent->addChild(child);

    return child;
}

void foundTranslation(XMLElement* element, Group* g){

    Translation* transl = new Translation();

    transl->parse(element);

    g->addAction(transl);
}

void foundRotation(XMLElement* element, Group* g){

    Rotation* rot = new Rotation();

    rot->parse(element);

    g->addAction(rot);
}

void foundScale(XMLElement* element, Group* g){

    Scale* scale = new Scale();

    scale->parse(element);

    g->addAction(scale);
}

void foundColor(XMLElement* element, Shape* shape){

    Color* diffuse = NULL;
    Color* ambient = NULL;
    Color* specular = NULL;
    Color* emission = NULL;
    float shininess = 0;
    float x,y,z;

    //Diffuse
    if(element->Attribute("diffX") || element->Attribute("diffY") || element->Attribute("diffZ")){

        x = 0.8f;
        y = 0.8f;
        z = 0.8f;

        element->QueryFloatAttribute("diffX", &x);
        element->QueryFloatAttribute("diffY", &y);
        element->QueryFloatAttribute("diffZ", &z);

        diffuse = new Color(x,y,z);
    }

    //Ambient
    if(element->Attribute("ambX") || element->Attribute("ambY") || element->Attribute("ambZ")){

        x = 0.2f;
        y = 0.2f;
        z = 0.2f;

        element->QueryFloatAttribute("ambX",&x);
        element->QueryFloatAttribute("ambY",&y);
        element->QueryFloatAttribute("ambZ",&z);

        ambient = new Color(x,y,z);
    }

    //Specular
    x = 0.0f; y=0.0f; z=0.0f;
    element->QueryFloatAttribute("specX",&x);
    element->QueryFloatAttribute("specY",&y);
    element->QueryFloatAttribute("specZ",&z);

    specular = new Color(x,y,z);

    //Emission
    x = 0.0f; y=0.0f; z=0.0f;
    element->QueryFloatAttribute("specX",&x);
    element->QueryFloatAttribute("specY",&y);
    element->QueryFloatAttribute("specZ",&z);

    emission = new Color(x,y,z);

    element->QueryFloatAttribute("shiny",&shininess);

    Material* colorComp = new Material(diffuse,ambient,specular,emission,shininess);

    shape->setColorComponent(colorComp);

}

void foundLights(XMLElement* element, Group* g){

    vector<Light*> lights;
    bool pointType;
    Light* light;
    float x=0,y=0,z=0;

    element = element->FirstChildElement();
    for(;element;element=element->NextSiblingElement())
        if(!strcmp(element->Name(),"light")){
            if(element->Attribute("type") && !strcmp(element->Attribute("type"),"POINT"))
                pointType = true;
            else pointType = false;

            element->QueryFloatAttribute("X", &x);
            element->QueryFloatAttribute("Y", &y);
            element->QueryFloatAttribute("Z", &z);

            light = new Light(pointType, new Point(x,y,z));
            lights.push_back(light);
    }

    g->setLights(lights);
}




vector<Point*> readFile(string file_name,vector<Point*> *normals, vector<Point*> *textures){

    vector<Point*> points;
    vector<string> tokens,tokensText,tokensNorm;
    string buffer;
    string line;
    int index = 0, i=0;
    string file_path = "../" + file_name;
    ifstream file (file_path);

    if(file.is_open()){

        index = 0;
        getline(file,line);
        int nVert = atoi(line.c_str());

        for(i=0;i< nVert; i++){ // iterate over the lines of the file
            getline(file,line);
            stringstream ss(line);
            while(ss >> buffer)
                tokens.push_back(buffer); // it
            // erate over the coordinates of the points in each line
            //cout << tokens[index] << endl;
            //add points to the vector
            points.push_back(new Point(stof(tokens[index]),stof(tokens[index+1]),stof(tokens[index+2])));
            //std::cout << i++;
            index+=3;
        }

        index = 0;
        getline(file,line);
        int nNorm = atoi(line.c_str());

        for(i=0;i<nNorm;i++){
            getline(file,line);
            stringstream ss(line);
            while(ss >> buffer)
                tokensNorm.push_back(buffer);

            normals->push_back(new Point(stof(tokensNorm[index]),stof(tokensNorm[index+1]),stof(tokens[index+2])));
            index+=3;
        }

        index = 0;
        getline(file,line);
        int nText = atoi(line.c_str());

        for(int i=0;i<nText;i++){
            getline(file,line);
            stringstream ss(line);
            while(ss >> buffer)
                tokensText.push_back(buffer);

            textures->push_back(new Point(stof(tokensText[index]),stof(tokensText[index+1]),stof(tokensText[index+2])));
            index+=2;
        }


        file.close();
    }
    else cout << "Unable to open file." << endl;
    return points;
}


//<models>
vector<Shape*> findModels(XMLElement* element,Group* g){

    vector<Shape*> listModels;

    element = element->FirstChildElement();//<model file=--->
    for(;element;element=element->NextSiblingElement()){
        if(!strcmp(element->Name(),"model")){

            vector<Point*> vertexes;
            vector<Point*> normals;
            vector<Point*> textures;

            vertexes = readFile(element->Attribute("file"),&normals,&textures);

            if(!vertexes.empty()){
                Shape* shape;
                if(element->Attribute("texture")){
                    shape = new Shape(vertexes,normals,textures);
                    shape->readyUp();
                    shape->loadTexture(element->Attribute("texture");
                }
                else
                    shape = new Shape(vertexes,normals,textures);
                //Shape* shape = new Shape(element->Attribute("file"),aux);

                foundColor(element,shape);
                listModels.push_back(shape);
            }
            else return listModels;
        }
    }

    return listModels;
}


void findElement(XMLElement* element, Group* g){

    XMLElement* current = element; //1st group
    //Find the Translation
    if(!strcmp(element->Name(),"translate"))
        foundTranslation(element,g);

    //Find the Rotation
    else if(!strcmp(element->Name(),"rotate"))
        foundRotation(element,g);

    //Find the Scale
    else if(!strcmp(element->Name(),"scale"))
        foundScale(element,g);

    //Find the Color
    else if(!strcmp(element->Name(),"lights")) {
        foundLights(element, g);

    }
    //Gather all Models
    else if(!strcmp(element->Name(),"models")){
        vector<Shape*> listShape = findModels(element,g);
        if(!listShape.empty()){
            g->setShapes(listShape);
        }
    }

    //Iterate over childs recursively
    else if(!strcmp(element->Name(),"group")) {
        Group *childGroup = myChild(g);
        element = element->FirstChildElement();
        if (element) {
            findElement(element, childGroup);
        }
    }

    //Iterate over brothers recursively
    current = current->NextSiblingElement();
    if(current)
        findElement(current,g);
}


Group* parseXML(char* file_name) {

    XMLDocument doc;
    XMLElement *element;
    XMLError error;

    Group *group = new Group();

    error = doc.LoadFile(file_name);
    if(error == 0){

        element = doc.FirstChildElement("scene")->FirstChildElement("lights");
        if(element) foundLights(element,group);

        element = doc.FirstChildElement("scene")->FirstChildElement("group");
        findElement(element,group);

    }
    else
        cout << "Could not load XML file: " << file_name << "." << endl;


    return group;
}
