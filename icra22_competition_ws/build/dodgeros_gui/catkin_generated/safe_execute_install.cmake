execute_process(COMMAND "/home/golnaz/test/icra22_competition_ws/build/dodgeros_gui/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/golnaz/test/icra22_competition_ws/build/dodgeros_gui/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
