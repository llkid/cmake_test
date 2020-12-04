# 指定 cmake 最低限度的版本号
cmake_minimum_required(VERSION 3.16)
# 这里 cmake 指定了 PROJECT_NAME，在之后使用 ${PROJECT_NAME} 等价于 Tutorial
# VERSION 必须为大写标记
project(Tutorial VERSION 1.0)

# 指定 CXX 标准 c++14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED true)

# 设置选项，类似于 赋值 1 给  标签 USE_MYMATH，需要手动配置，例如：cmake -DUSE_MYMATH=ON .
# option 默认选项为 OFF
option(USE_MYMATH "Use tutorial provided math implementation" ON)
message("USE_MYMATH status: ${USE_MYMATH}")

configure_file(TutorialConfig.h.in TutorialConfig.h)

if(USE_MYMATH)
    add_subdirectory(MathFunctions)
    list(APPEND EXTRA_LIBS MathFunctions)
#    list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/MathFunctions")
else()
    message(STATUS "nothing ${USE_MYMATH}")
endif()

# 生产可执行文件
add_executable(${PROJECT_NAME} main.cpp)
# 可执行目标文件链接到 MathFunctions
target_link_libraries(${PROJECT_NAME} PUBLIC ${EXTRA_LIBS})
# PUBLIC 必须标记为大写
target_include_directories(${PROJECT_NAME} PUBLIC
        "${PROJECT_BINARY_DIR}")
#        ${EXTRA_INCLUDES})

#add_subdirectory(MathFunctions)
#add_executable(${PROJECT_NAME} main.cpp)
#target_link_libraries(${PROJECT_NAME} PUBLIC MathFunctions)
#target_include_directories(${PROJECT_NAME} PUBLIC
#        "${PROJECT_BINARY_DIR}"
#        "${PROJECT_SOURCE_DIR}/MathFunctions")