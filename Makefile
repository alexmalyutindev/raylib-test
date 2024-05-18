RAYLIB_INCLUDE_PATH ?= ./libs/raylib-5.0_macos/include
RAYLIB_LIB_PATH ?= ./libs/raylib-5.0_macos/lib

CFLAGS += -O1 -Wall -std=c++17 -Wno-missing-braces
LFLAGS += -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL 

COMPILER ?= clang

main: main.cpp
	mkdir -p build
	$(COMPILER) main.cpp -o build/main $(CFLAGS) $(LFLAGS) -I$(RAYLIB_INCLUDE_PATH) $(RAYLIB_LIB_PATH)/libraylib.a
