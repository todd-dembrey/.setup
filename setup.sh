SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

git -C $SCRIPTPATH pull origin master

sudo bash $SCRIPTPATH/sudo-install.sh
bash $SCRIPTPATH/install.sh

# Turn off alt key for showing the HUD
gsettings set org.compiz.integrated show-hud "['']"

REPOS=(".myconfig")

for REPO in "${REPOS[@]}"
do
    REPO_PATH=$HOME/$REPO
    if [ ! -d $REPO_PATH ]; then
        git clone git@github.com:todd-dembrey/$REPO $REPO_PATH
    else
        git -C $REPO_PATH  pull origin master
    fi
    if [ -f $REPO_PATH/setup.sh ]; then
        bash $REPO_PATH/setup.sh
    fi
done

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

. ./install_font
