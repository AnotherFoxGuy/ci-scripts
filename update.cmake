message("TOOL \"${TOOL}\" REPO \"${REPO}\"")

SET(URL "https://api.github.com/repos/${REPO}/releases/latest")

execute_process(COMMAND curl -s -L ${URL} OUTPUT_VARIABLE VERSION_JSON)
string(JSON VERSION_DIRTY GET ${VERSION_JSON} tag_name)

string(REGEX REPLACE [^0-9\\.] "" VERSION "${VERSION_DIRTY}")
string(REPLACE "." "_" VERSION_UNDERSCORE ${VERSION})

message("Latest VERSION ${VERSION}")
configure_file("${CMAKE_CURRENT_LIST_DIR}/templates/install-${TOOL}.sh.in" "${CMAKE_CURRENT_LIST_DIR}/install-${TOOL}.sh" @ONLY)