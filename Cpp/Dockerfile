# Base ubuntu image
FROM ubuntu:22.04

# Set the environment to root
ENV HOME="/home"

# Set work directory
WORKDIR ${HOME}

# Install git and download the pyenv repository
RUN apt update && \
    apt install -y \
    git build-essential g++ vim \
    gdb duf \ 
    && apt clean

# Open up bash command for usage
CMD ["bash"]
