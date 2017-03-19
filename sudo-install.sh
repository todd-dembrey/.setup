SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

#Update pip for both python 2 and 3 system versions
python2 -m pip install --upgrade pip

python3 -m  pip install --upgrade pip

# Install virtualenvwrapper
pip install virtualenvwrapper

# Install Emacs
apt-get install -y  emacs

# Install Emacs dependencies
python2 -m pip install -r $SCRIPTPATH/elpy-requirements.txt

# Install python compilation requirements
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils


# Install postgis
apt-get install binutils
apt-get install libproj-dev proj-data proj-bin
apt-get install libgeos-c1v5 libgeos-dev
apt-get install gdal-bin libgdal-dev
apt-get install postgis
apt-get install postgresql-9.6 postgresql-9.6-postgis-scripts postgresql-server-dev-9.6 python-psycopg2

# Install other software
apt-get install vim zsh
