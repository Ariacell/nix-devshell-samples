{
  description = "Python with pip via Nix, virtualenv managed by user";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        python = pkgs.python311;
      in {
        devShells.default = pkgs.mkShell {
          name = "python-venv-shell";

          buildInputs = [
            python
            python.pkgs.pip
            python.pkgs.venvShellHook
          ];

          venvDir = ".venv";

          shellHook = ''
            echo "🐍 Nix shell with Python $(python --version)"
            echo "🔧 Virtual environment will be created at .venv if not present"

            # Create virtualenv if missing
            if [ ! -d "$venvDir" ]; then
              echo "⚙️ Creating virtual environment in $venvDir..."
              python -m venv $venvDir
            fi

            # Activate virtualenv
            source $venvDir/bin/activate
            export PYTHONPATH=$PWD
            echo "✅ Virtual environment activated with PYTHONPATH=$PYTHONPATH"
          '';
        };
      });
}