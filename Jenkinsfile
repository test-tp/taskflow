pipeline {
    agent any
    
    // On dit à Jenkins d'activer Node.js pour toute la pipeline
    tools {
        nodejs 'node18'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                // Cette commande va fonctionner car Jenkins a maintenant l'outil npm !
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                // Consigne du TP : Le pipeline doit échouer si les tests sont KO [cite: 95, 100]
                sh 'npm test'
            }
        }

        stage('Build Simulation') {
            steps {
                // Pour l'instant, on valide que les étapes Node fonctionnent.
                echo "Dependencies installed and tests passed successfully!"
            }
        }
    }
}