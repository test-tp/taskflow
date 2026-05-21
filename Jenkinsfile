pipeline {
    agent any
    
    tools {
        nodejs 'node18'
    }

    stages {
        stage('Initialize Project') {
            steps {
                // On crée directement un package.json ultra-simple et propre avec une commande echo
                sh '''
                if [ ! -f package.json ]; then
                    echo "Création d'un package.json par défaut..."
                    echo '{"name": "taskflow", "version": "1.0.0", "scripts": {"test": "echo NoTests && exit 0"}}' > package.json
                fi
                '''
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build Simulation') {
            steps {
                echo "Succès ! Le projet TaskFlow a été initialisé, installé et testé avec succès."
            }
        }
	stage('Build Docker Image') {
            steps {
                // On simule le build et le tag avec un numéro de version (ex: Build numéro X de Jenkins)
                echo "Démarrage du Build Docker pour TaskFlow..."
                echo "Commande simulée : docker build -t taskflow:${env.BUILD_NUMBER} ."
                echo "Image taskflow:${env.BUILD_NUMBER} générée avec succès !"
            }
        }
    }
}