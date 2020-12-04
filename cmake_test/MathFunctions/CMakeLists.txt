add_library(MathFunctions mysqrt.cpp)
target_include_directories(MathFunctions
        INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
        PRIVATE ${CMAKE_BINARY_DIR})

install(TARGETS MathFunctions DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../lib)
install(FILES MathFunctions.h DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../include)