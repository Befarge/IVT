#include "unit_test.hpp"

int main() {
    PyramidShape shape(4);
    ASSERT_EQ_F(shape.getSurfaceArea(), 5.4641);
    
    PyramidShape shape2(4, 2, 2);
    ASSERT_EQ_F(shape2.getSurfaceArea(), 21.8564);
}