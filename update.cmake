macro(mgs text)
    execute_process(COMMAND ${CMAKE_COMMAND} -E cmake_echo_color --green --bold ${text})
endmacro()

mgs("TOOL \"${TOOL}\" OWNER \"${OWNER}\"")

SET(URL "https://api.github.com/repos/${OWNER}/${TOOL}/releases/latest")

execute_process(COMMAND curl -s -L ${URL} OUTPUT_VARIABLE VERSION_JSON)
string(JSON VERSION_DIRTY GET ${VERSION_JSON} tag_name)

string(REGEX REPLACE [^0-9\\.] "" VERSION "${VERSION_DIRTY}")
string(REPLACE "." "_" VERSION_UNDERSCORE ${VERSION})

mgs("Latest VERSION ${VERSION}")
configure_file("${CMAKE_CURRENT_LIST_DIR}/templates/install-${TOOL}.sh.in" "${CMAKE_CURRENT_LIST_DIR}/install-${TOOL}.sh" @ONLY)