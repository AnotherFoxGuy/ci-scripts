macro(mgs text)
    execute_process(COMMAND ${CMAKE_COMMAND} -E cmake_echo_color --green --bold ${text})
endmacro()

mgs("TOOL \"${TOOL}\" OWNER \"${OWNER}\"")

execute_process(COMMAND lastversion "${OWNER}/${TOOL}" OUTPUT_VARIABLE VERSION)
string(REPLACE "\n" "" VERSION "${VERSION}")

mgs("Latest VERSION ${VERSION}")
configure_file("${CMAKE_CURRENT_LIST_DIR}/templates/install-${TOOL}.sh.in" "${CMAKE_CURRENT_LIST_DIR}/install-${TOOL}.sh" @ONLY)