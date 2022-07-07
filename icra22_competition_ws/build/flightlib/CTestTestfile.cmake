# CMake generated Testfile for 
# Source directory: /home/golnaz/test/icra22_competition_ws/src/agile_flight/flightmare/flightlib
# Build directory: /home/golnaz/test/icra22_competition_ws/build/flightlib
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_flightlib_gtest_flightlib_tests "/home/golnaz/test/icra22_competition_ws/build/flightlib/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/golnaz/test/icra22_competition_ws/build/flightlib/test_results/flightlib/gtest-flightlib_tests.xml" "--return-code" "/home/golnaz/test/icra22_competition_ws/devel/lib/flightlib/flightlib_tests --gtest_output=xml:/home/golnaz/test/icra22_competition_ws/build/flightlib/test_results/flightlib/gtest-flightlib_tests.xml")
set_tests_properties(_ctest_flightlib_gtest_flightlib_tests PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/golnaz/test/icra22_competition_ws/src/agile_flight/flightmare/flightlib/cmake/catkin.cmake;51;catkin_add_gtest;/home/golnaz/test/icra22_competition_ws/src/agile_flight/flightmare/flightlib/cmake/catkin.cmake;0;;/home/golnaz/test/icra22_competition_ws/src/agile_flight/flightmare/flightlib/CMakeLists.txt;200;include;/home/golnaz/test/icra22_competition_ws/src/agile_flight/flightmare/flightlib/CMakeLists.txt;0;")
subdirs("gtest")
