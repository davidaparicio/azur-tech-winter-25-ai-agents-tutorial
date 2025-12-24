#!/usr/bin/env bash

set -euo pipefail

# Get all Python version with Brew // brew install python@3.10
# ls -la /opt/homebrew/bin/python3* /usr/bin/python3* 2>/dev/null | grep -v "\.pyc"
# /opt/homebrew/bin/python3.10 -m venv .venv

# alias venv="if [ -e ./.venv/bin/activate ]; then source ./.venv/bin/activate; else python3 -m venv .venv && source ./.venv/bin/activate; fi"
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

pip3 install --upgrade pip
pip3 install -r requirements.txt

echo "################################################"
echo "# Virtual environment is set up and activated. #"
echo "# To deactivate, run: deactivate               #"
echo "################################################"

# All notebooks were be created for the Python 3.10.9 interpreter.
# If you have a different version, you might need to install additional packages.
python_version=$(python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}')")
required_version="3.10.19" #"3.10.9" # Version used to create the notebooks
# Latest version "3.14.2" / 11 December 2025
if [ "$python_version" != "$required_version" ]; then
    echo "Warning: Python version is $python_version, but notebooks were created for $required_version. You may need to install additional packages." >&2
fi

# Doc: https://realpython.com/intro-to-pyenv/

# # 1. Install pyenv
# brew install pyenv

# # 2. Add to your shell configuration (if not already done)
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# # 3. Restart your shell or source the config
# source ~/.zshrc

# # 4. Install Python 3.11 or 3.12 (recommended for Langfuse compatibility)
# pyenv install 3.12.0

# # 5. Set it for your project directory
# cd /Users/daparicio/code/github.com/davidaparicio/azur-tech-winter-25-ai-agents-tutorial
# pyenv local 3.12.0

# # 6. Recreate your virtual environment with the new Python version
# rm -rf .venv
# python3 -m venv .venv
# source .venv/bin/activate
# pip install -r requirements.txt  # or reinstall your dependencies

# source .venv/bin/activate && python -c "from langfuse.callback import CallbackHandler; print('Import successful')" 2>&1
# source .venv/bin/activate && python -c "from langfuse.langchain import CallbackHandler; print('Import successful with langfuse.langchain')"
# source .venv/bin/activate && python -c "from langfuse.langchain import CallbackHandler; help(CallbackHandler.__init__)" 2>&1 | head -30

# https://reference.langchain.com/v0.3/python/langchain/agents/langchain.agents.react.agent.create_react_agent.html
# https://langchain-ai.github.io/langgraph/how-tos/react-agent-from-scratch/
# https://www.kaggle.com/code/ksmooi/langchain-tool-integrated-with-react-agent

# https://stackoverflow.com/questions/79846977/langchain-%E2%89%A51-0-0-what-is-the-replacement-for-create-react-agent-create-tool-c
# https://www.reddit.com/r/LangChain/comments/1olhl40/create_agent_in_langchain_10_react_agent_often/

# Python is installed as
#   /opt/homebrew/bin/python3.10

# Unversioned and major-versioned symlinks `python`, `python3`, `python-config`, `python3-config`, `pip`, `pip3`, etc. pointing to
# `python3.10`, `python3.10-config`, `pip3.10` etc., respectively, are installed into
#   /opt/homebrew/opt/python@3.10/libexec/bin

# You can install Python packages with
#   pip3.10 install <package>
# They will install into the site-package directory
#   /opt/homebrew/lib/python3.10/site-packages

# `idle3.10` requires tkinter, which is available separately:
#   brew install python-tk@3.10

# If you do not need a specific version of Python, and always want Homebrew's `python3` in your PATH:
#   brew install python3

# See: https://docs.brew.sh/Homebrew-and-Python

# If you have : Notebook controller is DISPOSED. View jupyter log for further details.
# Uninstalling the Python Environments extension -> See: https://github.com/microsoft/vscode-jupyter/issues/16573#issuecomment-3181052186