pipeline {
    agent any
    
    tools {
        nodejs 'node18'
    }

    stages {
        stage('Initialize Project') {
            steps {
                sh '''
                if [ ! -f package.json ]; then
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

        stage('Build Docker Image') {
            steps {
                script {
                    // On build l'image avec le numéro de build Jenkins comme tag (ex: taskflow:14)
                    sh "docker build -t taskflow:${env.BUILD_NUMBER} ."
                    
                    // On lui ajoute le tag 'latest' pour le serveur de test
                    sh "docker tag taskflow:${env.BUILD_NUMBER} taskflow:latest"
                }
            }
        }

        stage('Deploy (Partie 4)') {
            steps {
                echo "Déploiement automatique sur le serveur de test..."
                // On donne les droits d'exécution au script et on le lance
                sh 'chmod +x ./deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}