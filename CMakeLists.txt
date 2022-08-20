cmake_minimum_required(VERSION 3.22)
project(CHelloTriangle)

set(CMAKE_CXX_STANDARD 17)
message(CMAKE_MODULE_PATH)

include_directories(.)
include_directories(shaders)

include_directories(C:/VulkanSDK/1.3.211.0/Include)
include_directories(C:/Users/p.gigel/source/glm)
include_directories(C:/Users/p.gigel/source/glfw-3.3.8.bin.WIN64/include)
include_directories(C:/Users/p.gigel/source/singleFileHeader)

#find_package(glfw3 3.3 REQUIRED)

link_libraries(C:/VulkanSDK/1.3.211.0/Lib/vulkan-1.lib)
link_libraries(C:/Users/p.gigel/source/glfw-3.3.8.bin.WIN64/lib-vc2022/glfw3.lib)
link_libraries(C:/Users/p.gigel/source/glfw-3.3.8.bin.WIN64/lib-vc2022/glfw3dll.lib)

add_executable(CHelloTriangle HelloTriangle.cpp)