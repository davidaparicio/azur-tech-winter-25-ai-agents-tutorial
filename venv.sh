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
