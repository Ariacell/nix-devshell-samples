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