# Find the native T2M3BASE headers and libraries.
#
#  T2M3BASE_LIBRARIES    - List of libraries when using nana.
#  T2M3BASE_FOUND        - True if nana found.

# Look for the library.
FIND_LIBRARY(T2M3BASE_LIBRARY NAMES FOSSSimT2M3base HINTS ${CMAKE_SOURCE_DIR}/lib)
MARK_AS_ADVANCED(T2M3BASE_LIBRARY)

# handle the QUIETLY and REQUIRED arguments and set T2M3BASE_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(T2M3BASE DEFAULT_MSG T2M3BASE_LIBRARY)

IF(T2M3BASE_FOUND)
  SET(T2M3BASE_LIBRARIES ${T2M3BASE_LIBRARY})
ELSE(T2M3BASE_FOUND)
  SET(T2M3BASE_LIBRARIES)
ENDIF(T2M3BASE_FOUND)