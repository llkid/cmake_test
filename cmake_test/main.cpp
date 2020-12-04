#include <iostream>
#include "TutorialConfig.h"
#include <cmath>

#ifdef USE_MYMATH
#  include "MathFunctions.h"
#endif

int main(int argc, char** argv) {
    if (argc < 2) {
        // report version
        std::cout << argv[0] << " Version " << Tutorial_VERSION_MAJOR << "."
                << Tutorial_VERSION_MINOR << std::endl;
        std::cout << "Usage: " << argv[0] << " number" << std::endl;
        return 1;
    }
    const auto& inputValue = std::stod(argv[1]);
#ifdef USE_MYMATH
    const auto outputValue = mysqrt(inputValue);
    std::cout << "USE_MYMATH--> Second value is: " << outputValue << '\n';
#else
    const auto outputValue = sqrt(inputValue);
    std::cout << "STD_MATH-->   Second value is: " << outputValue << '\n';
#endif
    std::cout << "Hello, World!" << std::endl;

    return 0;
}
