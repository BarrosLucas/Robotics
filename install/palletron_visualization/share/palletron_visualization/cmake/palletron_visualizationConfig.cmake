# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_palletron_visualization_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED palletron_visualization_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(palletron_visualization_FOUND FALSE)
  elseif(NOT palletron_visualization_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(palletron_visualization_FOUND FALSE)
  endif()
  return()
endif()
set(_palletron_visualization_CONFIG_INCLUDED TRUE)

# output package information
if(NOT palletron_visualization_FIND_QUIETLY)
  message(STATUS "Found palletron_visualization: 1.0.0 (${palletron_visualization_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'palletron_visualization' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${palletron_visualization_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(palletron_visualization_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${palletron_visualization_DIR}/${_extra}")
endforeach()
