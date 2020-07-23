
FROM python:3.6-stretch

# install build utilities
RUN apt-get update && \
	apt-get install -y gcc make apt-transport-https ca-certificates build-essential

# set the working directory for containers
WORKDIR  /usr/main/

# Installing python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the files from the project’s root to the working directory
COPY . /usr/main/

# Running Python Application and keep container open 
CMD python3 ./src/main.py && tail -f /dev/null


