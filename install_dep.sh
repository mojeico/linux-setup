echo "test111"


#########################################
########## UPGRADE && UPDATE  ###########
#########################################


sudo yum -y update && sudo yum -y upgrade 
sudo yum -y install epel-release snapd dnf-plugins-core 
sudo dnf install -y dnf-plugins-core

sudo yum install gh
suto yum install git 
############################
########### TERMINAL ####### ---  after this step - source ~/.zshrc
############################

sudo yum -y install neovim

sudo dnf -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo yum -y install util-linux-user

gh repo clone romkatv/powerlevel10k  $ZSH_CUSTOM/themes/powelevel10k/
sed -i 's#robbyrussell#powerlevel10k/powerlevel10k#g' ~/.zshrc


gh repo clone mojeico/nvim ~/.config/nvim


chsh -s $(which zsh)

sudo dnf copr enable atim/lazygit -y
sudo dnf -y install lazygit

sudo dnf -y install fzf
sudo yum -y install tmux

gh repo clone mojeico/tmux
ln -s ~/tmux/.tmux .tmux
ln -s ~/tmux/.tmux.conf .tmux.conf 



##########################
####### TOOLS ############
#########################


sudo yum -y install htop
sudo yum -y golang nodejs yum-utils
sudo yum -y group install "Development Tools"
sudo yum -y install ripgrep
sudo yum -y install vim 

sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf -y install terraform


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl


sudo dnf -y copr enable luminoso/k9s
sudo dnf -y install k9s


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.zshrc

brew install kubectx


sudo yum install -y awscli

wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
sudo mv virtualbox.repo /etc/yum.repos.d/virtualbox.repo

sudo dnf install -y gcc binutils make glibc-devel patch libgomp glibc-headers  kernel-headers kernel-devel-`uname -r` dkms
sudo dnf install -y VirtualBox-7.0


sudo usermod -a -G vboxusers $(whoami)
sudo /usr/lib/virtualbox/vboxdrv.sh setup

VER=$(curl -s https://download.virtualbox.org/virtualbox/LATEST.TXT)
wget https://download.virtualbox.org/virtualbox/$VER/Oracle_VM_VirtualBox_Extension_Pack-$VER.vbox-extpack

sudo dnf -y install vagrant



mkdir -p ~/.local/bin
CURRENT_VERSION=$(curl -Ls https://api.github.com/repos/Versent/saml2aws/releases/latest | grep 'tag_name' | cut -d'v' -f2 | cut -d'"' -f1)
sudo wget -c "https://github.com/Versent/saml2aws/releases/download/v${CURRENT_VERSION}/saml2aws_${CURRENT_VERSION}_linux_amd64.tar.gz" -O - | sudo tar -xzv -C ~/.local/bin
sudo chmod u+x ~/.local/bin/saml2aws
hash -r
saml2aws --version


#########################
######## UI Part ########
#########################


sudo dnf -y install gnome-tweak-tool

gh repo clone vinceliuice/WhiteSur-gtk-theme ~/Downloads/WhiteSur-gtk-theme 
~/Downloads/WhiteSur-gtk-theme/install.sh --nord -l -c Dark -m -p 60 -P bigger --normal


gh repo clone alvatip/Nordzy-icon ~/Downloads/Nordzy-icon
~/Downloads/Nordzy-icon/install.sh -t default -c -p 


gh repo clone alvatip/Sunity-cursors ~/Downloads/Nordzy-icon
~/Downloads/Sunity-cursors/install.sh 


#####################################
###############GIT ##################
#####################################


git config --global user.name "Gleb Mojeico"
git config --global user.email "g.mojeico@gmail.com"


############################
############ TEST ##########
############################






echo "-------------------"
echo "Please run - source ~/.zshrc"
