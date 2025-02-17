
#using python 3.8 slim image
FROM python:3.8-slim

WORKDIR /app
# Copy the requirements file in order to install
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt
# Copy the rest of the application
COPY . .

CMD ["python", "main:app", "--host", "0.0.0.0", "--port", "80"]




# docker build -t hello-kubernetes:latest .
# aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.us-west-2.amazonaws.com
# docker tag hello-kubernetes:latest <account-id>.dkr.ecr.us-west-2.amazonaws.com/hello-kubernetes:latest
# docker push <account-id>.dkr.ecr.us-west-2.amazonaws.com/hello-kubernetes:latest
