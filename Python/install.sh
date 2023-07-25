# Add linux packages
yes | apt update
yes | apt install default-jre
yes | apt install vim

# Add Python (Has 3.11.4 installed)
yes | apt install python3.11-venv
yes | apt install python3-pip

# Add python = python3.11 into bash
echo "alias python='python3.11'" >> ~/.bash_aliases

# Pip install virtualenv
# pip install virtualenv --break-system-packages

# Create a folder for virtual environment folder
cd /usr
mkdir virtualenv
cd virtualenv

# Create a new virtual environment for the lab
python3.11 -m venv ajaylab-env

# Activate the new Python environment
source ajaylab-env/bin/activate
# Come back to home folder where others files are available
cd /home
# Install requirements
pip install -r requirements.txt

# Create script to activate Python environment and add to bash
touch /usr/virtualenv/activate-ajaylab.sh
echo 'cd /usr/virtualenv' >> /usr/virtualenv/activate-ajaylab.sh
echo 'source ajaylab-env/bin/activate' >> /usr/virtualenv/activate-ajaylab.sh
echo 'cd /home' >> /usr/virtualenv/activate-ajaylab.sh
echo 'chmod +x /usr/virtualenv/activate-ajaylab.sh' >> ~/.bash_aliases
echo "alias activate-python='source /usr/virtualenv/activate-ajaylab.sh'" >> ~/.bash_aliases

# Add jupyter-notebook to docker
echo "alias run-jupyter=jupyter-notebook --allow-root --ip=0.0.0.0" >> ~/.bash_aliases

# Activate bash
source ~/.bashrc

# Run test that all is fine
activate-python
python test.py