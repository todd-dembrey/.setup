SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

#Update pip for both python 2 and 3 system versions
python2 -m pip install --upgrade pip

python3 -m  pip install --upgrade pip

# Install Emacs
apt-get install -y  emacs

# Install Emacs dependencies
python2 -m pip install -r $SCRIPTPATH/elpy-requirements.txt
