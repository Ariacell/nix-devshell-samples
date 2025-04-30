{
  description = "C++ Vulkan dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          name = "cpp-vulkan-shell";

          buildInputs = [
            pkgs.clang
            pkgs.cmake
            pkgs.gdb
            pkgs.lldb
            pkgs.gcc
            pkgs.pkg-config
            pkgs.vulkan-headers
            pkgs.vulkan-loader
            pkgs.vulkan-tools
            pkgs.vulkan-validation-layers
          ];

          shellHook = ''
            export CC=clang
            export CXX=clang++
            echo "✅ Vulkan dev environment ready."
          '';
        };
      });
}
