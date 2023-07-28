FROM alpine:3.18.2

# Install Python req
RUN apk update && apk add python3 py3-pip

# Install Jenkins req
RUN apk add openjdk11 git

# Get's rid of pyc files saving space
ENV PYTHONDONTWRITEBYTECODE 1
# Imidiate logs - real time logs
ENV PYTHONUNBUFFERED 1

# Set home directory
WORKDIR /home/jenkins
