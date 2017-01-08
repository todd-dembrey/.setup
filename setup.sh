git pull origin master

sudo bash ./sudo-install.sh
bash ./install.sh

# Turn off alt key for showing the HUD
gsettings set org.compiz.integrated show-hud "['']"

repos=(".myconfig" ".emacs.d")

for repo in "${repos[@]}"
do
    if [ ! -d ~/$repo ]; then
        git clone git@github.com:todd-dembrey/$repo ~/$repo
    else
        git -C ~/$repo  pull origin master
    fi
    if [ -f ~/$repo/setup.sh ]; then
        bash ~/$repo/setup.sh
    fi
done
