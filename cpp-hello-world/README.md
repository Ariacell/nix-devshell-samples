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
mkdir build
cd build
cmake ..
make
./hello
```

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