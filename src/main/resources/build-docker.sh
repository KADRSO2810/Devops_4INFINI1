#!/bin/bash
echo "=== Building Student Management Application ==="

# 1. Build Maven
echo "1. Building with Maven..."
mvn clean package -DskipTests

# 2. Build Docker image
echo "2. Building Docker image..."
docker build -t student-management:latest .

# 3. Tag for Docker Hub (si vous voulez publier)
echo "3. Tagging image..."
docker tag student-management:latest votre-username/student-management:latest

echo "✅ Build completed!"