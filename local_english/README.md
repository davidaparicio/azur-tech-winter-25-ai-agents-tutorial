# AI Agents Tutorial - Telecom Valley Winter Tech 2025

This repository contains a tutorial on building AI agents using LangChain and LangGraph, presented at Telecom Valley Winter Tech 2025.

## 📚 Contents

This tutorial consists of three progressive notebooks:

1. **`intro_langchain.ipynb`** - Introduction to LangChain fundamentals

   - Understanding basic building blocks (LLM, prompts, chains)
   - Building simple question/answer pipelines
   - Creating a simplified RAG (Retrieval-Augmented Generation) system

2. **`intro_langgraph.ipynb`** - Introduction to LangGraph

   - Understanding StateGraph concepts
   - Building workflows as graphs
   - Creating a simple conversational agent

3. **`agents_weather_calendar.ipynb`** - ReAct Agents with LangGraph
   - Building a ReAct agent using two tools: weather and calendar
   - Implementing the same behavior with LangGraph (explicit workflow)
   - Comparing ReAct vs LangGraph approaches
   - Observability with Langfuse (local)

## 🚀 Setup

### Prerequisites

- Python 3.8+
- Jupyter Notebook or JupyterLab

### Installation

1. Clone this repository:

```bash
git clone <repository-url>
cd Telecom-Valley-Winter-Tech-2025/ai-agents-tutorial/english
```

2. Install required packages:

```bash
# For Ollama (recommended)
pip install -U langchain-core langchain-ollama langgraph langchain-text-splitters python-dotenv

# OR for LM Studio (OpenAI-compatible API)
pip install -U langchain-core langchain-openai langgraph langchain-text-splitters python-dotenv

# For observability with Langfuse (optional)
pip install -U langfuse
```

For visualization features (Mermaid PNG generation):

```bash
pip install -U grandalf
```

### Local LLM Setup

This tutorial uses a **local LLM** instead of the OpenAI API. You can choose between **Ollama** or **LM Studio**.

#### Option 1: Ollama (Recommended)

1. Install Ollama from [ollama.ai](https://ollama.ai)

2. Download a model (e.g., llama3.2):

```bash
ollama pull llama3.2:latest
```

3. Verify the Ollama server is running:

```bash
ollama serve
```

#### Option 2: LM Studio

1. Install LM Studio from [lmstudio.ai](https://lmstudio.ai)

2. Download a model through the LM Studio interface

3. Start the local server (default on http://localhost:1234)

### Environment Variables

Create a `.env` file in the `english` directory (a `.env.example` file is provided as a template):

```bash
# Type of local LLM: "ollama" or "lmstudio"
LOCAL_LLM_TYPE=ollama

# Ollama configuration
OLLAMA_BASE_URL=http://localhost:11434
OLLAMA_MODEL=llama3.2:latest

# LM Studio configuration (if using LM Studio)
LMSTUDIO_BASE_URL=http://localhost:1234/v1
LMSTUDIO_MODEL=local-model

# Optional: Langfuse for local observability
# LANGFUSE_BASE_URL=http://localhost:3000
# LANGFUSE_PUBLIC_KEY=pk-lf-...
# LANGFUSE_SECRET_KEY=sk-lf-...
```

**Important**: The `.env` file is ignored by git to avoid committing sensitive information. Use `.env.example` as a template.

### Langfuse Setup (Optional)

Langfuse is an open-source observability platform for LLM applications. Unlike LangSmith, it can be self-hosted locally.

#### Option 1: Local Langfuse with Docker (Recommended)

1. Install Docker on your machine

2. Start Langfuse with Docker Compose (a `docker-compose.yml` file is already provided in this directory):

```bash
# Start Langfuse
docker-compose up -d
```

3. Access the web interface: http://localhost:3000

4. Create an account and a project

5. Get your API keys (Public Key and Secret Key) from the project settings

6. Install the Python package:

```bash
pip install langfuse
```

7. Add the keys to your `.env` file

#### Option 2: Langfuse Cloud

If you prefer not to self-host:

1. Create an account on [cloud.langfuse.com](https://cloud.langfuse.com)

2. Create a project and get your API keys

3. Install the Python package:

```bash
pip install langfuse
```

4. In your `.env`, use:

```bash
LANGFUSE_BASE_URL=https://cloud.langfuse.com
LANGFUSE_PUBLIC_KEY=pk-lf-...
LANGFUSE_SECRET_KEY=sk-lf-...
```

## 📖 Usage

1. Start Jupyter Notebook:

```bash
jupyter notebook
```

2. Open the notebooks in order:

   - Start with `intro_langchain.ipynb` for LangChain basics
   - Then `intro_langgraph.ipynb` for LangGraph concepts
   - Finally `agents_weather_calendar.ipynb` for the complete agent example

3. Make sure your environment variables are set before running cells that require API keys.

## 📄 Slides

**Note**: The `slides.pdf` file is included for convenience and sharing purposes.

## 🛠️ Technologies Used

- **LangChain**: Framework for building applications with LLMs
- **LangGraph**: Library for building stateful, multi-actor applications with LLMs
- **Ollama / LM Studio**: Local LLM solutions for running language models without relying on external APIs
- **Langfuse**: Open-source observability platform for LLM applications, can be self-hosted locally (optional)

## 📝 Notes

- The weather and calendar tools in `agents_weather_calendar.ipynb` are simulated (no external API calls)
- All notebooks include English comments and explanations
- The tutorial demonstrates both implicit (ReAct) and explicit (LangGraph) agent workflows

## 🤝 Contributing

Feel free to open issues or submit pull requests for improvements.

## 👤 Author

Presented by Marie Vaucher during Telecom Valley Winter Tech 2025 event.
marie@aztelia.com
+33 7 83 17 88 35
