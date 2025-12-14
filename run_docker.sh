#!/usr/bin/env bash

set -euo pipefail

#docker compose down --volumes --timeout 60 --remove-orphans

# Check if .env file exists
if [ ! -f .env ]; then
    echo "Error: .env file not found!"
    echo "Please copy .env.example to .env and configure your environment variables:"
    echo "  cp .env.example .env"
    echo "  # Then edit .env with your actual values"
    exit 1
fi

# Pull latest images
echo "Pulling latest Docker images..."
docker compose pull

# Start services
echo "Starting Docker containers..."
docker compose up --build -d

# Show logs
echo ""
echo "Containers are starting. Showing logs (Ctrl+C to exit, containers will keep running)..."
docker compose logs -f