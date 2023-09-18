echo "test111"


####################################
########## INSTALL UTILS ###########
####################################
sudo yum -y update
sudo yum -y upgrade 
sudo dnf -y install snapd


sudo yum -y install epel-release
sudo yum -y install htop

sudo yum -y golang
sudo yum -y nodejs

sudo yum -y group install "Development Tools"

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl


sudo dnf -y copr enable luminoso/k9s
sudo dnf -y install k9s


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.zshrc


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
########### TERMINAL ####### after this step - source ~/.zshrc
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
sudo yum install -y tmux

gh repo clone mojeico/tmux
ln -s ~/tmux/.tmux .tmux
ln -s ~/tmux/.tmux.conf .tmux.conf 


