# Install script for directory: /Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/transactions/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/spi/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/serialization/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/network-configuration/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/monitoring/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/learning-basics/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/distributed-topic/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/distributed-primitives/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/distributed-map/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/distributed-collections/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/Org.Website.Samples/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/replicated-map/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/invocation-timeouts/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/backpressure/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/event-properties/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/client-statistics/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/pipeline/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/authentication/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/cp/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/soak-test/cmake_install.cmake")
  include("/Users/hakanaktas/Hazelcast/hazelcast-cpp-client-4.2/cmake-build-debug/examples/external-smart-client-discovery/cmake_install.cmake")

endif()

