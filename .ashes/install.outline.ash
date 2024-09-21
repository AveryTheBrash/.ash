#!/bin/zsh

#HOW TO INSTALL

#Freshen-up your system
sudo apt update && sudo apt upgrade

#All .ash scripts are written for zsh
sudo apt install zsh

#.ash is available on github
sudo apt install git

#oh-my-zsh has many tools
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Make zsh your default shell
chsh -s $(which zsh)

#Uncomment the line "# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
nano ~/.zshrc

#Restart to get new default shell
shutdown -r 0

#.ash
git clone https://github.com/AveryTheBrash/.ash-zsh-tools.git

#Move .ash and .ashes into the /home/$USER folder
mv .ash-zsh-tools/.ash .ash-zsh-tools/.ashes /home/$USER

#Add the line "sources ~/.ash" to the ~/.zshrc file
nano ~/.zshrc

#Install vlc for gif backgrounds
sudo apt install vlc

#Install Distrobox
sudo apt install distrobox

#Install powerlevel10k theme and put it into oh-my-zsh themes
git clone https://github.com/romkatv/powerlevel10k.git
