cmake_minimum_required(VERSION 3.9)
project(Spaaace_CG)

find_package(GLUT REQUIRED)
include_directories(${GLUT_INCLUDE_DIR})
link_directories(${GLUT_LIBRARY_DIRS})
add_definitions(${GLUT_DEFINITIONS})

if(NOT GLUT_FOUND)
    message(ERROR " GLUT not found!")
endif(NOT GLUT_FOUND)

find_package(OpenGL REQUIRED)
include_directories(${OpenGL_INCLUDE_DIRS})
link_directories(${OpenGL_LIBRARY_DIRS})
add_definitions(${OpenGL_DEFINITIONS})
if(NOT OPENGL_FOUND)
    message(ERROR " OPENGL not found!")
endif(NOT OPENGL_FOUND)

add_executable(Spaaace_CG
        Engine/main.cpp

        Generator/box.cpp
        Generator/box.h
        CMakeLists.txt
        Generator/plane.cpp
        Generator/plane.h
        Generator/vertex.cpp
        Generator/vertex.h
        README.md
        Generator/sphere.cpp
        Generator/sphere.h
        tinyxml2.cpp
        tinyxml2.h
        Generator/cone.cpp
        Generator/cone.h
        Engine/shape.cpp
        Engine/shape.h
        )


target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} )