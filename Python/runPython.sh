# Version of the image to run
version=latest

# Local folder is set to current folder
localfolder=${PWD}

# DO NOT CHANGE ITEMS BELOW
# This is the app name
appname=ajaylab/python

# Host folder inside the image
hostfolder=/home

# Command to run
docker run -it -p 8888:8888 -v "${localfolder}":${hostfolder} --rm ${appname}:${version}
