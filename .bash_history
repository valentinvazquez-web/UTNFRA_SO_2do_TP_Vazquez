pwd
docker --version
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
git --v
sudo apt install git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ~/UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc && history -a
ansible --version
apt install ansible
sudo apt update
sudo apt install -y python3 python3-pip python3-venv
sudo pip3 install ansible
ansible --version
mkdir RTA_Examen_$(date +%Y%m%d)
ls -l
cd ~/RTA_Examen_$(date +%Y%m%d)
touch Punto_A.sh
touch Punto_B.sh
touch Punto_C.sh
touch Punto_D.sh
touch Punto_E.sh
chmod +x Punto_*.sh
cd ~
mkdir UTNFRA_SO_2do_TP_Vazquez
cd UTNFRA_SO_2do_TP_Vazquez
cp -r ~/UTN-FRA_SO_Examenes/202406 .
cp -r ~/RTA_Examen_$(date +%Y%m%d) .
history -a
