# Install script for directory: /home/leonardo/Documents/Maestria/Tesis/sodden

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/leonardo/Documents/Maestria/Tesis/sodden/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY MESSAGE_LAZY FILES "/home/leonardo/Documents/Maestria/Tesis/sodden/config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/scripts" TYPE DIRECTORY MESSAGE_LAZY FILES "/home/leonardo/Documents/Maestria/Tesis/sodden/utils/scripts/install_tree/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/preamble/" TYPE DIRECTORY MESSAGE_LAZY FILES "/home/leonardo/Documents/Maestria/Tesis/sodden/build/preamble/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/bh/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/bisort/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/em3d/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/health/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/mst/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/perimeter/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/power/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/treeadd/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/tsp/cmake_install.cmake")
  include("/home/leonardo/Documents/Maestria/Tesis/sodden/build/olden/voronoi/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/leonardo/Documents/Maestria/Tesis/sodden/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
