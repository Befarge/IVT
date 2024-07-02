#include <geomath/PrismShape.hpp>
#include <vector>
#include <iostream>
#include <cmath>

PrismShape::PrismShape(
    uint32_t segment_n, double radius,
    double height, Vector2DXZ offset
) {
    this->is_custom_vertices = false;
    this->setSegmentNumber(segment_n);
    this->setRadius(radius);
    this->setHeight(height);
    this->setOffset(offset);
}

PrismShape::PrismShape(
    std::vector<Vector2DXZ> vertices, 
    double height, Vector2DXZ offset
) {
    this->is_custom_vertices = true;
    this->setBaseVertices(vertices);
    this->setHeight(height);
    this->setOffset(offset);
}
  

void PrismShape::setSegmentNumber(uint32_t segment_n){
    this->segment_n = segment_n;
}

void PrismShape::setBaseVertices(std::vector<Vector2DXZ> vertices) {
    if (!this->is_custom_vertices) {
        std::cout << "Основание пирамиды задано радиусом";
        abort();
    }
    this->custom_vertices = std::move(vertices);
}

void PrismShape::setRadius(double radius) {
    if (this->is_custom_vertices) {
        std::cout << "Основание пирамиды задано набором вершин";
        abort();
    }
    this->radius = radius;
}

void PrismShape::setHeight(double height){
    this->height = height;
}

void PrismShape::setOffset(Vector2DXZ offset){
    this->offset = offset;
}

// Getters
uint32_t PrismShape::getSegmentNumber(){
    return this->segment_n;
}

std::vector<Vector2DXZ> PrismShape::getBaseVertices() {
    return this->custom_vertices;
}

double PrismShape::getRadius(){
    return this->radius;
}

double PrismShape::getHeight(){
    return this->height;
}

Vector2DXZ PrismShape::getOffset(){   
    return this->offset;
}


double PrismShape::getSurfaceArea() {
    Face base(false);

    if (this->is_custom_vertices)
        base = Face(custom_vertices);
    else //Radius mode
        base = this->getFaces()[0];

    double perimetr = base.getPerimetr();
    double area = base.getArea();

    return 2 * area + perimetr * height;
}

double PrismShape::getVolume() {
    Face base(false);

    if (this->is_custom_vertices)
        base = Face(custom_vertices);
    else  // Radius mode
        base = this->getFaces()[0];

    return base.getArea() * height;
}

std::vector<Face> PrismShape::getFaces() {
    std::vector<Face> kit;

    if (this->is_custom_vertices) {
        kit.resize(2, Face(false));
        kit.resize(custom_vertices.size() + 2, Face(true));
        
        for (
            int i = 0, size = custom_vertices.size(), prev_index = size + 1, next_index = 2;
            i < size; 
            i++, prev_index = 2 + (i + size - 1) % size, next_index = 2 + (i + size) % size)
        { 
            double x = custom_vertices[i].x;
            double z = custom_vertices[i].z;

            Vector3D up_point{x + offset.x,height,z + offset.z};
            Vector3D down_point{x, 0, z};

            kit[0].addVertex(down_point);
            kit[1].addVertex(up_point);
            kit[prev_index].addVertex(down_point);
            kit[prev_index].addVertex(up_point);
            kit[next_index].addVertex(down_point);
            kit[next_index].addVertex(up_point);
        } 
    }
    else {
        // Radius mode
        kit.resize(2, Face(false));
        kit.resize(segment_n + 2, Face(true));

        double alpha = 360./segment_n;
            
        for(int i = 0, prev_index = segment_n + 1, next_index = 2;
            i < segment_n;
            i++, prev_index = 2 + (i + segment_n - 1) % segment_n, next_index = 2 + (i + segment_n) % segment_n)
        {

            double x = int(cos(alpha * i * M_PI/180) * radius * 100) / 100.;
            double z = int(sin(alpha * i * M_PI/180) * radius * 100) / 100.;

            Vector3D up_point{x + offset.x,height,z + offset.z};
            Vector3D down_point{x, 0, z};

            kit[0].addVertex(down_point);
            kit[1].addVertex(up_point);
            kit[prev_index].addVertex(down_point);
            kit[prev_index].addVertex(up_point);
            kit[next_index].addVertex(down_point);
            kit[next_index].addVertex(up_point);
        }
    }
    return kit;
}