sudo apt update
sudo apt install -y ca-certificates curl git

sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER
sudo docker run hello-world

git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ~/UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc

cd ~
git clone https://github.com/valentinvazquez-web/UTNFRA_SO_2do_TP_Vazquez.git
cd ~/UTNFRA_SO_2do_TP_Vazquez

lsblk

sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdc
sudo pvdisplay

sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_temp /dev/sdc
sudo vgdisplay

sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo lvdisplay

sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap

sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap

echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab

lsblk
df -h
vgs
lvs
swapon -s

mkdir -p $HOME/RTA_Examen_20251118
echo "sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdc
sudo vgcreate vg_datos /dev/sdb
sudo vgcreate vg_temp /dev/sdc
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap" > ~/RTA_Examen_20251118/Punto_A.sh

chmod +x ~/RTA_Examen_20251118/Punto_A.sh

sudo cp ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt .
sudo cp /usr/local/bin/vazquezAltaUser-Groups.sh .
chmod +x vazquezAltaUser-Groups.sh
sudo ./vazquezAltaUser-Groups.sh vagrant Lista_Usuarios.txt
getent group devs
getent passwd juan

mkdir -p $HOME/RTA_Examen_$(date +%Y%m%d)
cp vazquezAltaUser-Groups.sh $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
chmod +x $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh

cd ~/UTNFRA_SO_2do_TP_Vazquez
sudo cp $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh .
git add Punto_B.sh Lista_Usuarios.txt vazquezAltaUser-Groups.sh
git commit -m "Punto B completo"
git push

cd ~/UTNFRA_SO_2do_TP_Vazquez/202406/docker/
nano index.html
nano Dockerfile
docker build -t web1-vazquez .
docker login
docker tag web1-vazquez valenvazz11/web1-vazquez:latest
docker push valenvazz11/web1-vazquez:latest
nano run.sh
chmod +x run.sh
./run.sh

cp run.sh ~/RTA_Examen_$(date +%Y%m%d)/Punto_C.sh

cd ~/UTNFRA_SO_2do_TP_Vazquez
git add 202406/docker/*
git add RTA_Examen_$(date +%Y%m%d)/Punto_C.sh
git commit -m "Punto C completo"
git push

sudo apt install -y ansible python3-apt

cd ~/UTNFRA_SO_2do_TP_Vazquez/202406/ansible
mkdir -p roles/punto_d/{tasks,templates,defaults}
nano roles/punto_d/defaults/main.yml
nano roles/punto_d/tasks/main.yml
nano roles/punto_d/templates/datos_alumno.txt.j2
nano roles/punto_d/templates/datos_equipo.txt.j2
nano roles/punto_d/templates/sudoers_2psupervisores.j2
mkdir -p playbooks
nano playbooks/punto_d_play.yml
nano Punto_D.sh
chmod +x Punto_D.sh
./Punto_D.sh

cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2psupervisores

git add roles/punto_d ansible.cfg playbooks/punto_d_play.yml Punto_D.sh
git commit -m "Punto D completo"
git push

cp Punto_D.sh ~/RTA_Examen_$(date +%Y%m%d)/

cd ~/UTNFRA_SO_2do_TP_Vazquez
cp ~/.bash_history .
git add RTA_Examen_$(date +%Y%m%d) .bash_history 202406
git commit -m "Subo RTA final, historial y carpeta 202406"
git push
