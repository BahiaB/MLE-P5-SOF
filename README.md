# Projet de Prédiction de Tags StackOverflow

## Introduction

Bienvenue dans le projet de prédiction de tags pour StackOverflow. Ce projet vise à développer un modèle de machine learning capable de prédire les tags associés à une question donnée sur StackOverflow. Les tags sont essentiels pour organiser et retrouver les questions sur la plateforme. Ce document vous guidera à travers les objectifs du projet et la structure des dossiers.

## Objectif du Projet

L'objectif principal de ce projet est de :

1. **Collecter et Préparer les Données** :
   - Extraire les questions et les tags associés depuis StackOverflow.
   - Nettoyer et prétraiter les données pour les rendre exploitables par des modèles de machine learning.

2. **Analyser les Données** :
   - Explorer les données pour comprendre leur distribution et les relations entre les questions et les tags.

3. **Développer des Modèles de Machine Learning** :
   - Entraîner différents modèles pour prédire les tags des questions.
   - Évaluer les performances des modèles et sélectionner le meilleur.

4. **Visualiser les Résultats** :
   - Créer des visualisations pour mieux comprendre les performances des modèles et les caractéristiques des données.

## Structure des Dossiers

Le projet est organisé comme suit :

├── Data  
│   ├── QueryResults2.csv  
│   ├── QueryResults_stability.csv  
│   ├── df_stab.csv  
│   ├── df_tags_filtered.csv  
│   └── predictions_labels.csv  
├── Dockerfile  
├── Entry_point.txt  
├── Exploration.ipynb  
├── Final_code  
│   ├── app.py  
│   ├── final_model.joblib  
│   ├── final_model.py  
│   ├── preprocess_function.joblib  
│   ├── requirements.txt  
│   ├── streamlit.py  
│   ├── test_final_model.py  
│   └── vectorize_function.joblib  
├── StackoverflowAPItest.ipynb  
├── dowload_nltk.py  
├── request1.sql  
├── requirements.txt  
├── supervised.ipynb  
└── unsupervised.ipynb  

## Guide d'Utilisation

1. **Installation des Dépendances** :
   - Assurez-vous d'avoir Python installé.
   - Installez les dépendances nécessaires avec la commande :
     ```
     pip install -r requirements.txt
     ```

2. **Lancer l'API en local** :
   - En etant dans le repertoire "final_code", tapez la commande 'uvicorn app:app'.
   - Une adresse ip locale sera fournie pour acceder a l'API
   - Notez que cela peut prendre un peu de temps
   - Pour acceder a l'API sans passer par streamlit, rajouter /docs a la fin de l'URL fourni

3. **Acceder a l'API avec streamlit** :
   - Une fois l'API lancée, tapez la commande 'streamlit run streamlit.py'.
   - Une adresse ip locale sera fournie pour acceder a l'API

4. **Point d'entrée sur le cloud** :
   - http://20.93.223.113/docs
   - Dans l'onglet 'POST', cliquez sur la petite fleche en haut a droite pour dérouler, puis cliquez sur "try it out"
   - Le texte "{"text": "string"}" est desormais modifiable, il suffit de remplacer 'string' par le texte pour lequel nous souhaitons avoir des tags.
   - !!! ATTENTION !!! Il faut remplacer string, mais garder les guillemets.
   - cliquez sur execute
   - La réponse apparait un peu plus bas dans l'onglet " response body"


## Conclusion

Ce projet fournit une approche complète pour la prédiction des tags sur StackOverflow. En suivant ce guide, vous pourrez facilement naviguer dans les différentes étapes du projet et comprendre son objectif et sa structure.
