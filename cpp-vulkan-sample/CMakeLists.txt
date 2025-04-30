cmake_minimum_required(VERSION 3.10)
project(VulkanHello)

set(CMAKE_CXX_STANDARD 17)

find_package(Vulkan REQUIRED)

add_executable(vulkan-hello src/main.cpp)

target_include_directories(vulkan-hello PRIVATE ${Vulkan_INCLUDE_DIRS})
target_link_libraries(vulkan-hello PRIVATE ${Vulkan_LIBRARIES})

