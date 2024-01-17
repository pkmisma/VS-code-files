# Dockerfile
FROM jenkins/agent:latest

USER root

RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*