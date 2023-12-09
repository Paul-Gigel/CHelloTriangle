STB_INCLUDE_PATH = /usr/include/stb/
TINYOBJ_INCLUDE_PATH = /usr/include/tiny_obj_loader

CFLAGS	= -std=c++17 -O1
LDFLAGS	= -lglfw -lvulkan -ldl -lX11 -lXxf86vm -lXrandr -lXi -I$(STB_INCLUDE_PATH) -I$(TINYOBJ_INCLUDE_PATH)

.PHONY: compile clean compile_HelloTriangle compile_HelloTriangle2 test_HelloTriangle test_HelloTriangle2 clean_HelloTriangle clean_HelloTriangle2 exe_HelloTriangle exe_HelloTriangle2

compile: compile_HelloTriangle compile_HelloTriangle2
clean: clean_HelloTriangle clean_HelloTriangle2
test: test_HelloTriangle test_HelloTriangle2

compile_HelloTriangle:
	glslc shaders/shader.vert -o shaders/vert.spv
	glslc shaders/shader.frag -o shaders/frag.spv
	g++ $(CFLAGS) -o HelloTriangle HelloTriangle.cpp $(LDFLAGS)

test_HelloTriangle: clean_HelloTriangle compile_HelloTriangle exe_HelloTriangle
	$(MAKE) clean_HelloTriangle

clean_HelloTriangle:
	rm -f HelloTriangle ./shaders/*.spv

exe_HelloTriangle:
	./HelloTriangle


compile_HelloTriangle2:
	g++ $(CFLAGS) -o HelloTriangle2 HelloTriangle2.cpp $(LDFLAGS)

test_HelloTriangle2: clean_HelloTriangle2 compile_HelloTriangle2 exe_HelloTriangle2
	$(MAKE) clean_HelloTriangle2

clean_HelloTriangle2:
	rm -f HelloTriangle2

exe_HelloTriangle2:
	./HelloTriangle2
