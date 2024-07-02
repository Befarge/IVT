#include "unit_test.hpp"

int main() {
    PyramidShape shape(4);
    
    ASSERT_EQ_F(shape.getVolume(), 0.6667);
    
    PyramidShape shape2(4, 2, 2);
    ASSERT_EQ_F(shape2.getVolume(), 5.3334);
}