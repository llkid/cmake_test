# CMake generated Testfile for 
# Source directory: /home/shi/CLionProjects/cmake_test
# Build directory: /home/shi/CLionProjects/ct_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "/home/shi/CLionProjects/ct_build/Tutorial" "25")
set_tests_properties(Runs PROPERTIES  _BACKTRACE_TRIPLES "/home/shi/CLionProjects/cmake_test/CMakeLists.txt;54;add_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;0;")
add_test(Usage "/home/shi/CLionProjects/ct_build/Tutorial")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage:.*number" _BACKTRACE_TRIPLES "/home/shi/CLionProjects/cmake_test/CMakeLists.txt;56;add_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;0;")
add_test(Comp4 "/home/shi/CLionProjects/ct_build/Tutorial" "4")
set_tests_properties(Comp4 PROPERTIES  PASS_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/home/shi/CLionProjects/cmake_test/CMakeLists.txt;61;add_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;66;do_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;0;")
add_test(Comp9 "/home/shi/CLionProjects/ct_build/Tutorial" "9")
set_tests_properties(Comp9 PROPERTIES  PASS_REGULAR_EXPRESSION "9 is 3" _BACKTRACE_TRIPLES "/home/shi/CLionProjects/cmake_test/CMakeLists.txt;61;add_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;67;do_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;0;")
add_test(Comp-9 "/home/shi/CLionProjects/ct_build/Tutorial" "-9")
set_tests_properties(Comp-9 PROPERTIES  PASS_REGULAR_EXPRESSION "-9 is [-nan|nan|0]" _BACKTRACE_TRIPLES "/home/shi/CLionProjects/cmake_test/CMakeLists.txt;61;add_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;68;do_test;/home/shi/CLionProjects/cmake_test/CMakeLists.txt;0;")
subdirs("MathFunctions")
