echo "test111"



sudo yum -y update
sudo yum -y upgrade 

#sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
#sudo dnf -y install https://www.elrepo.org/elrepo-release-9.el9.elrepo.noarch.rpm
#sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml







sudo yum -y install epel-release
sudo yum -y install htop




sudo yum -y install neovim


sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl



sudo dnf -y install gnome-tweak-tool

cd ~/Downloads/

gh repo clone vinceliuice/WhiteSur-gtk-theme
~/Downloads/WhiteSur-gtk-theme/install.sh --nord -l -c Dark -m -p 60 -P bigger --normal


gh repo clone alvatip/Nordzy-icon
~/Downloads/Nordzy-icon/install.sh -t default -c -p 


gh repo clone alvatip/Sunity-cursors
~/Downloads/Sunity-cursors/install.sh 



cd ~/linux-setup

cp -R fonts ~/.local/share/fonts


############################
########### TERMINAL #######
############################

sudo dnf -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


sudo yum -y install util-linux-user


gh repo clone romkatv/powerlevel10k  $ZSH_CUSTOM/themes/powelevel10k/


sed -i 's#robbyrussell#powerlevel10k/powerlevel10k#g' ~/.zshrc


chsh -s $(which zsh)

git config --global user.email "g.mojeico@gmail.com"
git config --global user.name "Gleb Mojeico"

