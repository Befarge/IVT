#include "unit_test.hpp"

int main() {
    ParallelepipedShape shape;
    ASSERT_EQ_F(shape.getSurfaceArea(), 6)
    
    ParallelepipedShape shape2(2, 2, 2);
    ASSERT_EQ_F(shape2.getSurfaceArea(), 24)
}