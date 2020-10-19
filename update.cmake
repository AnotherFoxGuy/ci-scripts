message("TOOL \"${TOOL}\" REPO \"${REPO}\"")

file(DOWNLOAD "https://github-get-latest-version.anotherfoxguy.workers.dev/${REPO}" "tmp/${TOOL}-version")
file(READ "tmp/${TOOL}-version" VERSION_DIRTY)

string(REGEX REPLACE /[^0-9\\.]/ "" VERSION ${VERSION_DIRTY})
string(REPLACE "." "_" VERSION_UNDERSCORE ${VERSION})

message("Latest VERSION ${VERSION}")
configure_file("${CMAKE_CURRENT_LIST_DIR}/templates/install-${TOOL}.sh.in" "${CMAKE_CURRENT_LIST_DIR}/install-${TOOL}.sh" @ONLY)