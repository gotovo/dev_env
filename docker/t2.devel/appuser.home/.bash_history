echo '#apt'; sudo apt update; sudo apt dist-upgrade -d -y; sudo apt dist-upgrade --auto-remove
echo '#bash.shortcuts'; history | grep echo | grep -P --color=always -o '#\w[^\x27"]*' | sort -u
echo '#myip'; curl ifconfig.co; curl -4 ifconfig.co; curl https://api.myip.com; echo; curl -4 https://api.myip.com; echo
apt-mark showmanual | wc -l
dpkg -l | sed -nr 's/^ii\s+(\S+)\s.*/\1/p'
apt rdepends --installed perl
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/*.id_*
ssh-add -l
git pull --prune; git branch -av; git fsck --full --strict; git gc --prune=now
clear; echo '#git.notes'; cd ~/git/notes/; git fetch -aq; git status -u; git branch -av
python3 -m venv .venv.jupyter && . .venv.jupyter/bin/activate && pip3 install -U setuptools pip
pip install -U $(pip list --format=freeze | sed -r -n 's/(^[^=]+).*/\1/p')
echo '#venv.jupyter'; env=~/.venv.jupyter; deactivate; source $env/bin/activate; pip install -U pip setuptools; pip list
echo '#venv'; env=~/.venv; deactivate; source $env/bin/activate; pip install -U pip setuptools; pip list
sudo cp -pr /vol/git ~/; sudo chown -R appuser:appuser ~/git; ls -la ~/git/
cd; sudo cp -pr /vol/git data/; sudo chown -R appuser:appuser data; ls -la ~/ ~/git/
ln -s data/git git; ls -la ~/ ~/git/
ps -eFly --forest
echo '#ps-no-kthreads'; ps -fly -N --ppid 2 --forest
ssh -p 22 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o 'ServerAliveInterval 300' -o 'ServerAliveCountMax 4' -A root@host.com; date
git clone git@gitlab.com:user/proj.git
git clone git@github.com:user/proj.git
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
