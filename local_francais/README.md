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
   - Observabilité avec Langfuse (local)

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
# Pour Ollama (recommandé)
pip install -U langchain-core langchain-ollama langgraph langchain-text-splitters python-dotenv

# OU pour LM Studio (API compatible OpenAI)
pip install -U langchain-core langchain-openai langgraph langchain-text-splitters python-dotenv

# Pour l'observabilité avec Langfuse (optionnel)
pip install -U langfuse
```

Pour les fonctionnalités de visualisation (génération PNG Mermaid) :

```bash
pip install -U grandalf
```

### Configuration du LLM local

Ce tutoriel utilise un **LLM local** au lieu de l'API OpenAI. Vous avez le choix entre **Ollama** ou **LM Studio**.

#### Option 1 : Ollama (Recommandé)

1. Installez Ollama depuis [ollama.ai](https://ollama.ai)

2. Téléchargez un modèle (par exemple llama3.2) :

```bash
ollama pull llama3.2:latest
```

3. Vérifiez que le serveur Ollama fonctionne :

```bash
ollama serve
```

#### Option 2 : LM Studio

1. Installez LM Studio depuis [lmstudio.ai](https://lmstudio.ai)

2. Téléchargez un modèle via l'interface LM Studio

3. Démarrez le serveur local (par défaut sur http://localhost:1234)

### Variables d'environnement

Créez un fichier `.env` dans le répertoire `francais` (un fichier `.env.example` est fourni comme modèle) :

```bash
# Type de LLM local: "ollama" ou "lmstudio"
LOCAL_LLM_TYPE=ollama

# Configuration Ollama
OLLAMA_BASE_URL=http://localhost:11434
OLLAMA_MODEL=llama3.2:latest

# Configuration LM Studio (si vous utilisez LM Studio)
LMSTUDIO_BASE_URL=http://localhost:1234/v1
LMSTUDIO_MODEL=local-model

# Optionnel : Langfuse pour l'observabilité locale
# LANGFUSE_BASE_URL=http://localhost:3000
# LANGFUSE_PUBLIC_KEY=pk-lf-...
# LANGFUSE_SECRET_KEY=sk-lf-...
```

**Important** : Le fichier `.env` est ignoré par git pour éviter de committer des informations sensibles. Utilisez `.env.example` comme modèle.

### Configuration de Langfuse (Optionnel)

Langfuse est une plateforme d'observabilité open-source pour les applications LLM. Contrairement à LangSmith, elle peut être hébergée localement.

#### Option 1 : Langfuse local avec Docker (Recommandé)

1. Installez Docker sur votre machine

2. Lancez Langfuse avec Docker Compose (un fichier `docker-compose.yml` est déjà fourni dans ce répertoire) :

```bash
# Lancez Langfuse
docker-compose up -d
```

3. Accédez à l'interface web : http://localhost:3000

4. Créez un compte et un projet

5. Récupérez vos clés API (Public Key et Secret Key) dans les paramètres du projet

6. Installez le package Python :

```bash
pip install langfuse
```

7. Ajoutez les clés dans votre fichier `.env`

#### Option 2 : Langfuse Cloud

Si vous préférez ne pas héberger localement :

1. Créez un compte sur [cloud.langfuse.com](https://cloud.langfuse.com)

2. Créez un projet et récupérez vos clés API

3. Installez le package Python :

```bash
pip install langfuse
```

4. Dans votre `.env`, utilisez :

```bash
LANGFUSE_BASE_URL=https://cloud.langfuse.com
LANGFUSE_PUBLIC_KEY=pk-lf-...
LANGFUSE_SECRET_KEY=sk-lf-...
```

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

**Note** : Le fichier `slides.pdf` est inclus pour des raisons de commodité de partage.

## 🛠️ Technologies utilisées

- **LangChain** : Framework pour construire des applications avec des LLM
- **LangGraph** : Bibliothèque pour construire des applications multi-acteurs avec état en utilisant des LLM
- **Ollama / LM Studio** : Solutions de LLM locaux pour exécuter des modèles de langage sans dépendre d'API externes
- **Langfuse** : Plateforme d'observabilité open-source pour les applications LLM, hébergeable localement (optionnel)

## 📝 Notes

- Les outils météo et calendrier dans `agents_meteo_calendrier.ipynb` sont simulés (pas d'appels API externes)
- Tous les notebooks incluent des commentaires et explications en français
- Le tutoriel démontre à la fois les workflows d'agents implicites (ReAct) et explicites (LangGraph)

## 🤝 Contribution

N'hésitez pas à ouvrir des issues ou à soumettre des pull requests pour des améliorations.

## 👤 Auteur

Présenté par Marie Vaucher lors de Telecom Valley Winter Tech 2025
marie@aztelia.com
+33 7 83 17 88 35
