# Base ubuntu image
FROM ubuntu:kinetic-20220602

# Set the environment to root
ENV HOME="/home"

# Set work directory
WORKDIR ${HOME}

# Install git and download the pyenv repository
RUN apt update && \
    apt install -y \
    python3.10 \
    python3-pip \
    && apt clean

# Create a symbolic link from python to python3
RUN ln -s /usr/bin/python3 /usr/bin/python

# Copy the requirements file into the container
COPY requirements.txt /home/requirements.txt

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888
