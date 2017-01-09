# Install Pyenv
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
fi


# Refresh shell with new settings for pyenv
source $HOME/.zshrc


#Currently does not handle multiple releases of the same version
PYVERSIONS=(3.6.0)

for PYTHON in "${PYVERSIONS[@]}"
do
    # Install python and skip if existing
    pyenv install -s $PYTHON
    
done

# Concatenate the versions into a single string
VERSIONSSTRING= $(printf "python%s " "${PYVERSIONS[@]/%.?/}") 
# Set the global value so that the new versions are avaliable 
pyenv global system $VERSIONSSTRING


# Install Powerline fonts
FONTSPATH=$HOME/.powerlinefonts
if [ ! -d $FONTSPATH ]; then
    git clone git@github.com:powerline/fonts $FONTSPATH

    bash $FONTSPATH/install.sh
fi

