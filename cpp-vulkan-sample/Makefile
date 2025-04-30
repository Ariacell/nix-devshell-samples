
.PHONY: all debug release clean

all: debug release

debug:
	cmake -B build/debug -DCMAKE_BUILD_TYPE=Debug
	cmake --build build/debug --target vulkan-hello

release:
	cmake -B build/release -DCMAKE_BUILD_TYPE=Release
	cmake --build build/release --target vulkan-hello

clean:
	rm -rf build/debug build/release