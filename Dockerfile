
FROM python:3.6-stretch
MAINTAINER Jakob <jakobhenning.jensen@magasin.dk>

# install build utilities
RUN apt-get update && \
	apt-get install -y gcc make apt-transport-https ca-certificates build-essential



# set the working directory for containers
WORKDIR  /usr/src/main

# Installing python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the files from the project’s root to the working directory
COPY src/ /src/
RUN ls -la /src/*

# Running Python Application
CMD ["python3", "/src/main.py"]