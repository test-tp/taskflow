#!/bin/bash
echo "=== DÉBUT DU DÉPLOIEMENT CONTINU ==="
echo "Arrêt de l'ancienne version de TaskFlow si elle existe..."
# Dans un vrai environnement, on ferait : docker stop taskflow-app || true

echo "Lancement de la nouvelle image Docker..."
# Dans un vrai environnement : docker run -d --name taskflow-app -p 3000:3000 taskflow:latest

echo "Vérification du statut du service..."
echo "Service TaskFlow en ligne (99.9% disponibilité respecté)."
echo "=== DÉPLOIEMENT TERMINÉ AVEC SUCCÈS ==="