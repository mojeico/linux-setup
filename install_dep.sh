echo "test111"



sudo yum -y update
sudo yum -y upgrade 

sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo dnf -y install https://www.elrepo.org/elrepo-release-9.el9.elrepo.noarch.rpm
sudo dnf --enablerepo=elrepo-kernel -y install kernel-ml



sudo dnf update alsa-lib alsa-utils




sudo yum -y install epel-release
sudo yum -y install htop



#wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
#sudo yum -y install ./google-chrome-stable_current_*.rpm

sudo yum -y install neovim


sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl


sudo yum groups install "KDE Plasma Workspaces" --nobest --skip-broken





#problem with audio on Thinkpad E14 Gen 2 - https://askubuntu.com/questions/1316745/no-sound-on-ubuntu-20-04-lenovo-thinkbook-14s-g2 
