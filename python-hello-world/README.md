# Hello world in nix example

## Setting up your environment

Ensure nix package manager is installed, then run the following:
```sh
nix develop
```
If you see the following output, everything worked!
```
🐍 Nix shell with Python Python 3.11.11
🔧 Virtual environment will be created at .venv if not present
✅ Virtual environment activated with PYTHONPATH=/home/aria/nix-devenv-samples/python-hello-world
```


## Building this project

Assuming your nix shell is configured correctly from the previous step, you should be able to simply install using pip and run pytest to confirm the sample test runs and the PYTHONPATH is correct

```sh
pip install -r requirements.txt
pytest
python src/__init__.py
```