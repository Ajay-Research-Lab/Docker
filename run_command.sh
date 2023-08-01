# This is the app name
# Change it appropriately
appname=ajaylab/python-311

# Add the version or tag
# Change this appropriately
version="1.0.1"

# Give the command
# Change this appropriately
command="python --version"

# Command to run
# Do not change this
docker container run ${appname}:${version} ${command}