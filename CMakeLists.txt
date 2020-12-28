cmake_minimum_required(VERSION 3.10)

project(PhyTex VERSION "1.0.0" DESCRIPTION "PhyTex" HOMEPAGE_URL "https://github.com/flagarde/PhyTex" LANGUAGES NONE)

configure_file("${CMAKE_SOURCE_DIR}/source/Version.sty.in" "${CMAKE_SOURCE_DIR}/source/Version.sty" @ONLY)

execute_process(COMMAND "lualatex" "-output-directory=${CMAKE_BINARY_DIR}" "--shell-escape" "-jobname=${PROJECT_NAME}" "-halt-on-error" "${PROJECT_NAME}.tex" WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/source" OUTPUT_QUIET RESULT_VARIABLE SUCCESS)

if(${SUCCESS} EQUAL 0)
  file(RENAME "${CMAKE_BINARY_DIR}/${PROJECT_NAME}.pdf" "${CMAKE_SOURCE_DIR}/${PROJECT_NAME}-v${PROJECT_VERSION}.pdf")
else()
  message(FATAL_ERROR "Problem")
endif()

file(REMOVE "${CMAKE_SOURCE_DIR}/source/Version.sty")
