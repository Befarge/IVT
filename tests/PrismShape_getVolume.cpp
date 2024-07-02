#include "unit_test.hpp"

int main() {
    PrismShape shape(4);
    ASSERT_EQ_F(shape.getVolume(), 2);
    
    PrismShape shape2(4, 2, 2);
    ASSERT_EQ_F(shape2.getVolume(), 16);
}