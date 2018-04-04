//
// Created by yoda45 on 4/3/18.
//

#include "group.h"

Group::Group(){
}

Group::Group(int n){
    id = n;
}

Group::Group(vector<Shape*> listShape, vector<Group*> listGroup, vector<Action*> listAction){
    shapes = listShape;
    groups = listGroup;
    actions = listAction;
}

vector<Shape*> Group::getShapes(){
    return shapes;
}

vector<Group*> Group::getChilds(){
    return groups;
}

vector<Action*> Group::getActions(){
    return actions;
}

void Group::setShapes(vector<Shape*> listShape){
    shapes = listShape;
}

void Group::setChilds(vector<Group*> listGroup){
    groups = listGroup;
}

void Group::setActions(vector<Action*> listAction){
    actions = listAction;
}


void Group::addShape(Shape* shape) {
    shapes.push_back(shape);
}

void Group::addChild(Group* child) {
    groups.push_back(child);
}

void Group::addAction(Action* act){
    actions.push_back(act);
}