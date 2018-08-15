cmake_minimum_required(VERSION 3.12)

add_executable(app main.cc)

find_package(my_lib HINTS lib CONFIG REQUIRED)
#target_link_libraries(app public my_lib)
#target_link_libraries(app PRIVATE My::Lib)
target_link_libraries(app PRIVATE My::ALIB)
#target_link_libraries(app PRIVATE My_Lib)

export(TARGETS lib NAMESPACE liam:: FILE mylibthign.cmake)
