cmake_minimum_required(VERSION 3.9)
project(Spaaace_CG)

set(CMAKE_CXX_STANDARD 11)

add_executable(Spaaace_CG
        Generator/box.cpp
        Generator/box.h
        CMakeLists.txt
        Generator/main.cpp
        Generator/plane.cpp
        Generator/plane.h
        Generator/Vertex.cpp
        Generator/Vertex.h
        README.md
        Generator/sphere.cpp
        Generator/sphere.h
        tinyxml2.cpp
        tinyxml2.h)
