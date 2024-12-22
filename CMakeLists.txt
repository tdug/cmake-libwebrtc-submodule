cmake_minimum_required(VERSION 3.15)
project(WebRTCCMake)

set(LIBWEBRTC_SOURCE_DIR ${CMAKE_SOURCE_DIR}/libwebrtc)
set(LIBWEBRTC_BUILD_DIR ${CMAKE_BINARY_DIR}/libwebrtc)

add_custom_target(build_libwebrtc
    COMMAND gn gen ${LIBWEBRTC_BUILD_DIR}
    COMMAND ninja -C ${LIBWEBRTC_BUILD_DIR}
    WORKING_DIRECTORY ${WEBRTC_DIR}
    COMMENT "Building WebRTC using Ninja"
)

include_directories(${LIBWEBRTC_SOURCE_DIR})

add_executable(application Main.cpp)

add_dependencies(application build_libwebrtc)

target_link_libraries(application PRIVATE libwebrtc)