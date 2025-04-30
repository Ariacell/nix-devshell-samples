# Hello world in nix example

## Setting up your environment

Ensure nix package manager is installed, then run the following:
```sh
nix develop
```
If you see the following output, everything worked!
```
Welcome to the C++ development environment!
```


## Building this project

Assuming your nix shell is configured correctly from the previous step, you should be able to simply build for your target system by using the following commands:

```sh
#Debug build
cmake -B build/debug -DCMAKE_BUILD_TYPE=Debug
cmake --build build/debug --target vulkan-hello

# Release build
cmake -B build/release -DCMAKE_BUILD_TYPE=Release
cmake --build build/release --target vulkan-hello
```

Note that to debug using this launch configuration in vscode you'll need the CodeLLDB extension.

## Configuring VSCode

Ideally if you cd into this directory and run 
```sh
nix develop
code .
```
VSCode should just automatically detect the compiler tooling (you may need to click "scan")

If this doesn't work you may need to configure VSCode to point to the nix provider compiler toolchain: use the following commands to find out where the compiler is pulled from, and then point your IDE to the path found
```sh
which clang
```