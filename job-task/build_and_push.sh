#!/bin/bash  

# Variables  
AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)  
REGION="us-east-1"  
REPOSITORY_NAME="my-app"  

# Create ECR repository  
aws ecr create-repository --repository-name $REPOSITORY_NAME || echo "Repo already exists"  

# Build the Docker image  
docker build -t $REPOSITORY_NAME .  

# Tag the image  
docker tag $REPOSITORY_NAME:latest $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPOSITORY_NAME:latest  

# Log in to ECR  
$(aws ecr get-login --no-include-email --region $REGION)  

# Push the Docker image  
docker push $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPOSITORY_NAME:latest