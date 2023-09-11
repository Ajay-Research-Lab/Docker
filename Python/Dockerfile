# Base ubuntu image
FROM ubuntu:22.04

# Update the package repository and install required packages
RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get clean

# Add alias for python = python3
RUN echo "alias python='python3.10'" >> ~/.bash_aliases
RUN . ~/.bashrc

# Run the requirements.txt to install packages
COPY requirements.txt /home/requirements.txt
RUN pip install -r /home/requirements.txt

# Add command for jupyter notebook
RUN echo "alias run-jupyter='jupyter-notebook --allow-root --ip=0.0.0.0'" >> ~/.bash_aliases
RUN . ~/.bashrc

# Set the environment to root
ENV HOME="/home"

# Set work directory
WORKDIR ${HOME}