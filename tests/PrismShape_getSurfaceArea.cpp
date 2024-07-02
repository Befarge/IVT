#include "unit_test.hpp"

int main() {
    PrismShape shape(4);
    ASSERT_EQ_F(shape.getSurfaceArea(), 9.65685);
    
    PrismShape shape2(4, 2, 2);
    ASSERT_EQ_F(shape2.getSurfaceArea(), 38.6274);
}