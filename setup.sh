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
