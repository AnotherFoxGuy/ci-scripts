cmake_minimum_required(VERSION 3.16)

project(ci-scripts LANGUAGES NONE)

set(TOOLS 
    "kitware/cmake" 
    "mozilla/sccache"
    "muesli/duf"
    "jesseduffield/lazygit"
    "jesseduffield/lazydocker"
    "svenstaro/miniserve"
    "rami3l/pacaptr"
    "Doctave/doctave"
    "go-gitea/gitea"
    "zyedidia/eget"
    )

set(EXTRA_TOOLS 
    "itchio/butler" 
    "conan-io/conan"
    )

set(TOOL_TMP [==[
### @TOOL@

Repo: https://github.com/@item@

`curl "https://git.anotherfoxguy.com/AnotherFoxGuy/install-scripts/raw/branch/main/install-@TOOL@.sh" | sudo bash`
]==])

set(README [==[
# ci-scripts

Some bashscripts for installing devtools on Ubuntu 

Available tools:
@TOOL_LIST@
]==])

foreach (item IN ITEMS ${TOOLS})
    string(REPLACE "/" ";" RLIST "${item}")
    list(GET RLIST 0 OWNER)
    list(GET RLIST 1 TOOL)
    add_custom_target(
        ${TOOL}
        COMMAND ${CMAKE_COMMAND} -DOWNER=${OWNER} -DTOOL=${TOOL} -P ${CMAKE_SOURCE_DIR}/update.cmake
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        VERBATIM
    )
    list(APPEND all_tools ${TOOL})
    string(CONFIGURE ${TOOL_TMP} README_LINE)
    set(TOOL_LIST "${TOOL_LIST}\n${README_LINE}")
endforeach ()

add_custom_target(
        update_all ALL
        COMMENT "Update all tools"
        DEPENDS ${all_tools}
        VERBATIM
)

foreach (item IN ITEMS ${EXTRA_TOOLS})
    string(REPLACE "/" ";" RLIST ${item})
    list(GET RLIST 1 TOOL)
    string(CONFIGURE ${TOOL_TMP} README_LINE)
    set(TOOL_LIST "${TOOL_LIST}\n${README_LINE}")
endforeach ()

file(CONFIGURE OUTPUT ${CMAKE_SOURCE_DIR}/README.md CONTENT ${README})