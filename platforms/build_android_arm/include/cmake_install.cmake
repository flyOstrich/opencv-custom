# Install script for directory: /Users/allere/opencv-custom/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/allere/opencv-custom/platforms/build_android_arm/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/include/opencv" TYPE FILE FILES
    "/Users/allere/opencv-custom/include/opencv/cv.h"
    "/Users/allere/opencv-custom/include/opencv/cv.hpp"
    "/Users/allere/opencv-custom/include/opencv/cvaux.h"
    "/Users/allere/opencv-custom/include/opencv/cvaux.hpp"
    "/Users/allere/opencv-custom/include/opencv/cvwimage.h"
    "/Users/allere/opencv-custom/include/opencv/cxcore.h"
    "/Users/allere/opencv-custom/include/opencv/cxcore.hpp"
    "/Users/allere/opencv-custom/include/opencv/cxeigen.hpp"
    "/Users/allere/opencv-custom/include/opencv/cxmisc.h"
    "/Users/allere/opencv-custom/include/opencv/highgui.h"
    "/Users/allere/opencv-custom/include/opencv/ml.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/include/opencv2" TYPE FILE FILES "/Users/allere/opencv-custom/include/opencv2/opencv.hpp")
endif()

