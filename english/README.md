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

3. **`agents_meteo_calendrier.ipynb`** - ReAct Agents with LangGraph
   - Building a ReAct agent using two tools: weather and calendar
   - Implementing the same behavior with LangGraph (explicit workflow)
   - Comparing ReAct vs LangGraph approaches
   - Observability with LangSmith

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
pip install -U langchain-core langchain-openai langgraph langchain-text-splitters
```

For visualization features (Mermaid PNG generation):
```bash
pip install -U grandalf
```

### Environment Variables

Before running the notebooks, you need to set up your API keys as environment variables. Create a `.env` file in the `ai-agents-tutorial/english` directory or export them in your shell:

```bash
# Required: OpenAI API key
export OPENAI_API_KEY="your-openai-api-key-here"

# Optional: LangSmith for observability (used in agents_meteo_calendrier.ipynb)
export LANGCHAIN_API_KEY="your-langchain-api-key-here"
export LANGCHAIN_PROJECT="your-project-name"
export LANGSMITH_ENDPOINT="https://api.smith.langchain.com"
export LANGSMITH_TRACING="true"
```

**Important**: Never commit your API keys to the repository. The notebooks have been configured to use environment variables - make sure to fill in your own keys before running.

### Image Assets

Some notebooks reference image files for visualization:
- `react_agent.png` - Diagram showing ReAct agent structure
- `agent_workflow.png` - Diagram showing agent workflow

These images should be placed in a location accessible to your notebooks, or you can update the paths in the notebook cells accordingly.

## 📖 Usage

1. Start Jupyter Notebook:
```bash
jupyter notebook
```

2. Open the notebooks in order:
   - Start with `intro_langchain.ipynb` for LangChain basics
   - Then `intro_langgraph.ipynb` for LangGraph concepts
   - Finally `agents_meteo_calendrier.ipynb` for the complete agent example

3. Make sure your environment variables are set before running cells that require API keys.

## 📄 Slides

**Note**: The `slides.pdf` file is included for convenience and sharing purposes. While PDFs are not ideal for version control (they're binary files and harder to track changes), they provide an easy way to share presentation materials with participants. For future versions, consider using markdown-based presentation tools or keeping slides in a separate repository.

## 🛠️ Technologies Used

- **LangChain**: Framework for building applications with LLMs
- **LangGraph**: Library for building stateful, multi-actor applications with LLMs
- **OpenAI GPT-4o-mini**: Language model used throughout the tutorial
- **LangSmith**: Observability platform for LLM applications (optional)

## 📝 Notes

- The weather and calendar tools in `agents_meteo_calendrier.ipynb` are simulated (no external API calls)
- All notebooks include English comments and explanations
- The tutorial demonstrates both implicit (ReAct) and explicit (LangGraph) agent workflows

## 🤝 Contributing

Feel free to open issues or submit pull requests for improvements.

## 📄 License

[Add your license here]

## 👤 Author

Presented at Telecom Valley Winter Tech 2025

