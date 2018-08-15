add_subdirectory(${CMAKE_CURRENT_LIST_DIR})

add_library(My::Lib STATIC IMPORTED)
set_target_properties(My::Lib
        PROPERTIES
        IMPORTED_LOCATION liblib.a
        INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_CURRENT_LIST_DIR}/include
        )

add_library(My_Lib INTERFACE)
target_link_libraries(My_Lib INTERFACE lib)
target_include_directories(My_Lib INTERFACE ${CMAKE_CURRENT_LIST_DIR}/include)

add_library(My::ALIB ALIAS My_Lib)
