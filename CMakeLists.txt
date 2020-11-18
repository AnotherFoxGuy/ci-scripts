cmake_minimum_required(VERSION 3.16)

project(ci-scripts LANGUAGES NONE)

set(TOOLS "kitware/cmake" "conan-io/conan" "mozilla/sccache")

foreach (item IN ITEMS ${TOOLS})
    string(REPLACE "/" ";" RLIST ${item})
    list(GET RLIST 1 TOOL)
    add_custom_target(
        ${TOOL}
        COMMAND ${CMAKE_COMMAND} -DTOOL=${TOOL} -DREPO=${item} -P ${CMAKE_SOURCE_DIR}/update.cmake  
        VERBATIM
    )
    list(APPEND all_tools ${TOOL})
endforeach ()

add_custom_target(
        update_all ALL
        COMMENT "Zip and copy resources to build directory"
        DEPENDS ${all_tools}
        VERBATIM
)