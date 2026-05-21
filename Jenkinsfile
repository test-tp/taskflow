pipeline {
    agent any

    stages {
        // Étape 1 : Jenkins télécharge automatiquement le code (Déjà fonctionnel !)
        // On peut retirer l'étape manuelle "Checkout Git" car Jenkins le fait déjà par défaut au démarrage.

        // Étape 2 : On installe les dépendances et on lance les tests DANS un conteneur Node
        stage('Install & Test') {
            agent {
                docker { 
                    image 'node:18-alpine' 
                    // On partage le cache npm pour que ce soit plus rapide
                    args '-v $HOME/.npm:/.npm'
                }
            }
            steps {
                // Ces commandes s'exécutent désormais dans un environnement qui connaît "npm" !
                sh 'npm install'
                sh 'npm test'
            }
        }

        // Étape 3 : On build l'image Docker finale du projet TaskFlow
        stage('Build Docker Image') {
            steps {
                // Cette commande s'exécute sur l'agent principal (Jenkins) qui a accès au Docker du PC
                sh 'docker build -t taskflow:latest .'
            }
        }
    }
}