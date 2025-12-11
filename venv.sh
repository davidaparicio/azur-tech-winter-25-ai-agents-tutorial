#!/usr/bin/env bash

set -euo pipefail

#alias venv="if [ -e ./.venv/bin/activate ]; then source ./.venv/bin/activate; else python3 -m venv .venv && source ./.venv/bin/activate; fi"
# Check if virtual environment exists and activate it, otherwise create one
if [ -e ./.venv ]; then
    # Activate existing venv
    if source ".venv/bin/activate" 2>/dev/null; then
        echo "Virtual environment activated from existing .venv"
    else
        echo "Error: Could not activate virtual environment" >&2
        exit 1
    fi
else
    # Create new venv and activate it
    if python3 -m venv ".venv"; then
        echo "Created virtual environment at ./.venv"
        if source ".venv/bin/activate" 2>/dev/null; then
            echo "Virtual environment activated"
        else
            echo "Error: Could not activate newly created venv" >&2
            exit 1
        fi
    else
        echo "Error: Could not create virtual environment" >&2
        exit 1
    fi
fi

# Ensure ipykernel is installed (for existing venvs too)
if ! python -c "import ipykernel" 2>/dev/null; then
    echo "ipykernel not found, installing..."
    if pip install ipykernel; then
        echo "ipykernel installed successfully"
    else
        echo "Warning: Could not install ipykernel" >&2
    fi
fi

pip3 install langchain langchain-core langchain-ollama langchain-openai langgraph python-dotenv langfuse
# pip3 install langchain-classic

echo "################################################"
echo "# Virtual environment is set up and activated. #"
echo "# To deactivate, run: deactivate               #"
echo "################################################"

# All notebooks were be created for the Python 3.10.9 interpreter.
# If you have a different version, you might need to install additional packages.
python_version=$(python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}')")
required_version="3.10.9" # Version used to create the notebooks
# Latest version "3.14.2" / 11 December 2025
if [ "$python_version" != "$required_version" ]; then
    echo "Warning: Python version is $python_version, but notebooks were created for $required_version. You may need to install additional packages." >&2
fi  