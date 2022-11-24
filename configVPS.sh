#!/bin/sh

##  Written by Saleh Al-Hourni (https://www.linkedin.com/in/saleh-alhourani) 
 
## bash script for configering a ubuntu 22.04 VPS 

# updating  linux
apt update -y
apt upgrade -y
apt dist-upgrade -y

#configuring directories

mkdir -p /opt/tools
mkdir -p /opt/wordlist
mkdir -p /opt/lab


# configuring the environment
# installing the ubuntu GUI , apache2 , firefox , git , curl , whois , golang, docker , docker-compose
apt install ubuntu-desktop python3-pip
addgroup adm
apt install apache2 firefox curl git whois  docker.io docker-compose -y


# install go lang
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin




# configuring security tools
# install  nmap , eyewitness , arjun , amass 
apt install  nmap   eyewitness   -y
pip3 install arjun

snap install amass 
## installing Metasploit
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod 755 msfinstall
./msfinstall
mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/
msfdb init

# Install Kiterunner
cd /opt/tools
git clone  https://github.com/assetnote/kiterunner.git
cd kiterunner
make build
ln -s /opt/tools/kiterunner/dist/kr /usr/bin/kr



# installing wordlist
cd /opt/wordlist
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \
&&  unzip SecList.zip \
&&  rm -f SecList.zip

cd /opt/wordlist
wget -c https://github.com/hAPI-hacker/Hacking-APIs/archive/refs/heads/main.zip -O HackingAPIs.zip \
&&  unzip HackingAPIs.zip \
&&  rm -f HackingAPIs.zip

cd /opt/wordlist 
wget https://gist.github.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt 

