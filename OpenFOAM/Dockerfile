# Base cpp image from Ajay Research Lab
FROM ajaylab/cpp:1.0.0

# Set the environment to root
ENV HOME="/home"

# Set work directory
WORKDIR ${HOME}

# Install git and download the pyenv repository
RUN apt-get update 
RUN apt-get install -y curl
RUN curl https://dl.openfoam.com/add-debian-repo.sh | bash
RUN apt-get update
RUN apt-get install -y openfoam2306-default
RUN openfoam2306

# Open up bash command for usage
CMD ["openfoam2306"]
