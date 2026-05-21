pipeline {
    agent any

    stages {
        stage('Checkout Git') {
            steps {
                // Télécharge le code depuis GitHub
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                // Installe les paquets de l'application Node.js
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                // Lance les tests automatiques. Si un test échoue, la pipeline s'arrête ici !
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Crée l'image Docker à partir du Dockerfile
                sh 'docker build -t taskflow:latest .'
            }
        }
    }
}