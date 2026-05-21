#!/bin/bash
echo "=== DÉBUT DU DÉPLOIEMENT CONTINU (AVEC CONFIG PARTIE 5) ==="

# On définit qu'on déploie l'environnement de TEST
export ENV_FILE=test.env
export PORT=3000

echo "Chargement de la configuration : $ENV_FILE"

# Dans un vrai environnement avec Docker Compose installé, on ferait :
# docker compose down
# docker compose up -d

echo "Application TaskFlow déployée en mode : TEST sur le port $PORT"
echo "=== DÉPLOIEMENT TERMINÉ ==="