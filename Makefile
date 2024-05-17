RAYLIB_INCLUDE_PATH ?=/opt/homebrew/Cellar/raylib/5.0/include/
RAYLIB_LIB_PATH ?=/opt/homebrew/Cellar/raylib/5.0/lib/

CFLAGS += -O1 -Wall -std=c++14 -Wno-missing-braces
LFLAGS = -lraylib

COMPILER ?= clang

main: main.cpp
	mkdir -p build
	$(COMPILER) main.cpp -o build/main $(CFLAGS) -I$(RAYLIB_INCLUDE_PATH) -L$(RAYLIB_LIB_PATH) $(LFLAGS)
