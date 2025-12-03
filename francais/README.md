# Tutoriel sur les Agents IA - Telecom Valley Winter Tech 2025

Ce dépôt contient un tutoriel sur la construction d'agents IA en utilisant LangChain et LangGraph, présenté lors de Telecom Valley Winter Tech 2025.

## 📚 Contenu

Ce tutoriel se compose de trois notebooks progressifs :

1. **`intro_langchain.ipynb`** - Introduction aux fondamentaux de LangChain
   - Comprendre les briques de base (LLM, prompts, chaînes)
   - Construire des pipelines simples de question/réponse
   - Créer un système RAG (Retrieval-Augmented Generation) simplifié

2. **`intro_langgraph.ipynb`** - Introduction à LangGraph
   - Comprendre les concepts de StateGraph
   - Construire des workflows sous forme de graphes
   - Créer un agent conversationnel simple

3. **`agents_meteo_calendrier.ipynb`** - Agents ReAct avec LangGraph
   - Construire un agent ReAct utilisant deux outils : météo et calendrier
   - Implémenter le même comportement avec LangGraph (workflow explicite)
   - Comparer les approches ReAct vs LangGraph
   - Observabilité avec LangSmith

## 🚀 Configuration

### Prérequis

- Python 3.8+
- Jupyter Notebook ou JupyterLab

### Installation

1. Clonez ce dépôt :
```bash
git clone <repository-url>
cd Telecom-Valley-Winter-Tech-2025/ai-agents-tutorial/francais
```

2. Installez les packages requis :
```bash
pip install -U langchain-core langchain-openai langgraph langchain-text-splitters
```

Pour les fonctionnalités de visualisation (génération PNG Mermaid) :
```bash
pip install -U grandalf
```

### Variables d'environnement

Avant d'exécuter les notebooks, vous devez configurer vos clés API comme variables d'environnement. Créez un fichier `.env` dans le répertoire `ai-agents-tutorial/francais` ou exportez-les dans votre shell :

```bash
# Requis : Clé API OpenAI
export OPENAI_API_KEY="votre-clé-api-openai-ici"

# Optionnel : LangSmith pour l'observabilité (utilisé dans agents_meteo_calendrier.ipynb)
export LANGCHAIN_API_KEY="votre-clé-api-langchain-ici"
export LANGCHAIN_PROJECT="nom-de-votre-projet"
export LANGSMITH_ENDPOINT="https://api.smith.langchain.com"
export LANGSMITH_TRACING="true"
```

**Important** : Ne committez jamais vos clés API dans le dépôt. Les notebooks ont été configurés pour utiliser des variables d'environnement - assurez-vous de remplir vos propres clés avant d'exécuter.

### Ressources d'images

Certains notebooks référencent des fichiers d'images pour la visualisation :
- `react_agent.png` - Diagramme montrant la structure d'un agent ReAct
- `agent_workflow.png` - Diagramme montrant le workflow d'un agent

Ces images doivent être placées dans un emplacement accessible à vos notebooks, ou vous pouvez mettre à jour les chemins dans les cellules des notebooks en conséquence.

## 📖 Utilisation

1. Démarrez Jupyter Notebook :
```bash
jupyter notebook
```

2. Ouvrez les notebooks dans l'ordre :
   - Commencez par `intro_langchain.ipynb` pour les bases de LangChain
   - Puis `intro_langgraph.ipynb` pour les concepts LangGraph
   - Enfin `agents_meteo_calendrier.ipynb` pour l'exemple complet d'agent

3. Assurez-vous que vos variables d'environnement sont définies avant d'exécuter les cellules qui nécessitent des clés API.

## 📄 Diapositives

**Note** : Le fichier `slides.pdf` est inclus pour des raisons de commodité et de partage. Bien que les PDF ne soient pas idéaux pour le contrôle de version (ce sont des fichiers binaires et plus difficiles à suivre les modifications), ils offrent un moyen facile de partager les matériaux de présentation avec les participants. Pour les versions futures, envisagez d'utiliser des outils de présentation basés sur markdown ou de garder les diapositives dans un dépôt séparé.

## 🛠️ Technologies utilisées

- **LangChain** : Framework pour construire des applications avec des LLM
- **LangGraph** : Bibliothèque pour construire des applications multi-acteurs avec état en utilisant des LLM
- **OpenAI GPT-4o-mini** : Modèle de langage utilisé tout au long du tutoriel
- **LangSmith** : Plateforme d'observabilité pour les applications LLM (optionnel)

## 📝 Notes

- Les outils météo et calendrier dans `agents_meteo_calendrier.ipynb` sont simulés (pas d'appels API externes)
- Tous les notebooks incluent des commentaires et explications en français
- Le tutoriel démontre à la fois les workflows d'agents implicites (ReAct) et explicites (LangGraph)

## 🤝 Contribution

N'hésitez pas à ouvrir des issues ou à soumettre des pull requests pour des améliorations.

## 📄 Licence

[Ajoutez votre licence ici]

## 👤 Auteur

Présenté lors de Telecom Valley Winter Tech 2025

