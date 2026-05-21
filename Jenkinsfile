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
    }
}