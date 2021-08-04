# Base image
FROM python:3.7

# Environment
WORKDIR /app
COPY ./app /app

# Install Commands
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y \
  git \
  vim

# Install Python libraries
RUN pip install --upgrade pip \
  && pip install -r /app/requirements.txt
