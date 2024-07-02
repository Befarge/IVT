#include "unit_test.hpp"

int main() {
    ParallelepipedShape shape;
    ASSERT_EQ_F(shape.getVolume(), 1)
    
    ParallelepipedShape shape2(2, 2, 2);
    ASSERT_EQ_F(shape2.getVolume(), 8)
}