# Base ubuntu image
FROM ubuntu:kinetic-20220602

# Set the environment to root
ENV HOME="/home"

# Set work directory
WORKDIR ${HOME}

# Install git and download the pyenv repository
# RUN apt-get install -y git
RUN apt update
RUN apt install -y git
RUN apt install -y build-essential
RUN apt install -y g++
RUN apt install -y vim 
RUN apt install -y gdb
RUN apt install -y duf

# Open up bash command for usage
CMD ["bash"]
