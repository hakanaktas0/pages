#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hazelcast-cpp-client::hazelcast-cpp-client" for configuration "Debug"
set_property(TARGET hazelcast-cpp-client::hazelcast-cpp-client APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hazelcast-cpp-client::hazelcast-cpp-client PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libhazelcast-cpp-client.5.0.0.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libhazelcast-cpp-client.5.0.0.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS hazelcast-cpp-client::hazelcast-cpp-client )
list(APPEND _IMPORT_CHECK_FILES_FOR_hazelcast-cpp-client::hazelcast-cpp-client "${_IMPORT_PREFIX}/lib/libhazelcast-cpp-client.5.0.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
