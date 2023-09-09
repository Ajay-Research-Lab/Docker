# This is the app name
appname=ajaylab/cpp
version=latest

# Local folder is set to current folder
localfolder=${PWD}

# DO NOT CHANGE ITEMS BELOW
# Host folder inside Jupyter
hostfolder=/home

# Command to run
docker run -it -p 8888:8888 -v "${localfolder}":${hostfolder} ${appname}:${version}
