pwd
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
git clone  https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ~/UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source  ~/.bashrc  && history -a
cd UTNFRA_SO_2do_TP_Vazquez
mkdir -p UTNFRA_SO_2do_TP_Vazquez
cd UTNFRA_SO_2do_TP_Vazquez
git remoteadd origin https://github.com/valentinvazquez-web/UTNFRA_SO_2do_TP_Vazquez.git
git remote add origin https://github.com/valentinvazquez-web/UTNFRA_SO_2do_TP_Vazquez.git
git remote -v
/usr/local/bin/vazquezAltaUser-Groups.sh
ls -l /usr/local/bin | grep -i vazquez
sudo nano /usr/local/bin/vazquezAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/vazquezAltaUser-Groups.sh
ls -l /usr/local/bin/vazquezAltaUser-Groups.sh
sudo /usr/local/bin/vazquezAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls -l /usr/local/bin/
cat /usr/local/bin/vazquezAltaUser-Groups.sh
sudo /usr/local/bin/vazquezAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
getent group devs
getent passwd juan
sudo grep juan /etc/shadow
sudo grep vagrant /etc/shadow
sudo /usr/local/bin/vazquezAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
nano ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/vazquezAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo grep vagrant /etc/shadow
sudo grep juan /etc/shadow
mkdir -p $HOME/RTA_Examen_$(date +%Y%m%d)
nano $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
chmod +x $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
ls -l $HOME/RTA_Examen_$(date +%Y%m%d)
cat $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
cd ~/UTNFRA_SO_2do_TP_Vazquez
cp $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh ~/UTNFRA_SO_2do_TP_Vazquez/
cp /usr/local/bin/vazquezAltaUser-Groups.sh ~/UTNFRA_SO_2do_TP_Vazquez/
ls ~/UTNFRA_SO_2do_TP_Vazquez/
cd ~
git clone https://github.com/valentinvazquez-web/UTNFRA_SO_2do_TP_Vazquez.git
ls ~
cp /usr/local/bin/vazquezAltaUser-Groups.sh ~/UTNFRA_SO_2do_TP_Vazquez/
cp $HOME/RTA_Examen_$(date +%Y%m%d)/Punto_B.sh ~/UTNFRA_SO_2do_TP_Vazquez/
cp ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt ~/UTNFRA_SO_2do_TP_Vazquez/202406/bash_script/
cd ~/UTNFRA_SO_2do_TP_Vazquez
git add .
git commit -m "Punto B Terminado"
git config --global user.name "valentin"
git config --global user.email "valentinvazquez1105@gmail.com"
git commit -m "Punto B Terminado"
git branch
git push origin main
mv Punto_B.sh RTA_Examen_20251117/
git add RTA_Examen_20251117/Punto_B.sh
git commit -m "Moví Punto_B.sh a RTA_Examen_20251117"
git push
exit
cd /UTNFRA_SO_2do_TP_Vazquez
cd UTNFRA_SO_2do_TP_Vazquez
directory
valen@ubuntu-jammy:~$ cd UTNFRA_SO_2do_TP_Vazquez
git rm Punto_B.sh --cached 2>/dev/null
git add RTA_Examen_20251117/Punto_B.sh
git commit -m "Punto_B.sh a RTA_Examen_20251117"
git push
cd ~/UTNFRA_SO_2do_TP_Vazquez/202406/docker/
nano index.html
nano Dockerfile
docker build -t web1-Vazquez .
docker --version
docker ps
groups
sudo usermod -aG docker $USER
exit
cd ~/UTNFRA_SO_2do_TP_Vazquez/202406/docker/
groups
docker ps
docker build -t web1-vazquez .
groups
docker ps
docker login
docker tag web1-vazquez valenvazz11/web1-vazquez:latest
docker push valenvazz11/web1-vazquez:latest
nano run.sh
chmod +x run.sh
./run.sh
docker ps
cd ~/UTNFRA_SO_2do_TP_Vazquez
git status
git add 202406/docker/index.html 202406/docker/Dockerfile 202406/docker/run.sh
git status
git commit -m "Punto C Docker: imagen construida, Dockerfile y run.sh"
git push origin main
mv ~/UTNFRA_SO_2do_TP_Vazquez/202406/docker/run.sh ~/UTNFRA_SO_2do_TP_Vazquez/RTA_Examen_20251117/Punto_C.sh
chmod +x ~/UTNFRA_SO_2do_TP_Vazquez/RTA_Examen_20251117/Punto_C.sh
ls -l ~/UTNFRA_SO_2do_TP_Vazquez/RTA_Examen_20251117/
cd ~/UTNFRA_SO_2do_TP_Vazquez
git add RTA_Examen_20251117/Punto_C.sh
git commit -m "Mover run.sh a RTA_Examen_20251117 como Punto_C.sh"
git push origin main
curl localhost:8080
history -a
cd 202406/ansible/
roles/punto_d/defaults/main.yml
chmod +x Punto_D.sh
mkdir -p roles/punto_d/{tasks,templates,defaults}
tree roles/punto_d
sudo apt install tree -y
tree roles/punto_d
ls -R roles/punto_d
nano roles/punto_d/defaults/main.yml
nano roles/punto_d/tasks/main.yml
nano roles/punto_d/templates/datos_alumno.txt.j2
nano roles/punto_d/templates/datos_equipo.txt.j2
nano roles/punto_d/templates/sudoers_2psupervisores.j2
ls -R roles/punto_d
mkdir -p playbooks
nano playbooks/punto_d_play.yml
nano Punto_D.sh
chmod +x Punto_D.sh
./Punto_D.sh
sudo apt update
sudo apt install ansible -y
ansible --version
sudo apt install python3-apt -y
./Punto_D.sh
nano ansible.cfg
./Punto_D.sh
nano roles/punto_d/defaults/main.yml
./Punto_D.sh
cat roles/punto_d/templates/datos_alumno.txt.j2
nano roles/punto_d/defaults/main.yml
cat roles/punto_d/defaults/main.yml
cat roles/punto_d/tasks/main.yml
./Punto_D.sh
nano roles/punto_d/templates/datos_alumno.txt.j2
nano  roles/punto_d/templates/datos_equipo.txt.j2
cat  roles/punto_d/templates/datos_equipo.txt.j2
./Punto_D.sh
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2psupervisores
hostname -I
cat /etc/os-release | grep PRETTY_NAME
nproc
cat /tmp/2do_parcial/equipo/datos_equipo.txt
nano roles/punto_d/defaults/main.yml
rm -f /tmp/2do_parcial/equipo/datos_equipo.txt
./Punto_D.sh
cat /tmp/2do_parcial/equipo/datos_equipo.txt
cd ~/UTNFRA_SO_2do_TP_Vazquez/202406
git status
git add roles/punto_d
git add ansible.cfg
git add playbooks/punto_d_play.yml
git add Punto_D.sh
cd ansible
ls
git add roles/punto_d
git add ansible.cfg
git add playbooks/punto_d_play.yml
git add Punto_D.sh
git add .
git commit -m "Punto D completo"
git push
git status
git ls-files | grep punto_d
git add playbooks/punto_d_play.yml roles/punto_d/defaults/main.yml roles/punto_d/tasks/main.yml roles/punto_d/templates/datos_alumno.txt.j2 roles/punto_d/templates/datos_equipo.txt.j2 roles/punto_d/templates/sudoers_2psupervisores.j2
git add roles/punto_d
git add playbooks/punto_d_play.yml
git commit -m "Punto_d con playbook, rol y templates"
cd ~/UTNFRA_SO_2do_TP_Vazquez/202406/ansible
git add playbooks/punto_d_play.yml
git add roles/punto_d
git restore ../docker/run.sh
git commit -m "Punto_d con playbook, rol y templates"
git status
git rev-parse --show-toplevel
ls -R /home/valen/UTNFRA_SO_2do_TP_Vazquez/202406/ansible/roles/punto_d
ls /home/valen/UTNFRA_SO_2do_TP_Vazquez/202406/ansible/playbooks/
git status --ignored
git rev-parse --show-toplevel
find /home/valen/UTNFRA_SO_2do_TP_Vazquez/202406 -maxdepth 2 -type d -name ".git"
cat /home/valen/UTNFRA_SO_2do_TP_Vazquez/.gitignore
ls -lid /home/valen/UTNFRA_SO_2do_TP_Vazquez
ls -lid /home/valen/UTNFRA_SO_2do_TP_Vazquez/202406
git ls-files | grep 202406
git check-ignore -v 202406
cd /home/valen/UTNFRA_SO_2do_TP_Vazquez
git add 202406
git commit -m "Punto D completo (ansible + roles + templates)"
git push
cd /home/valen/UTNFRA_SO_2do_TP_Vazquez
git ls-files | grep 202406
ls -d 202406/ansible/RTA_Examen_*
ls -d 202406/ansible/RTA_Examen_* | grep -v 20251118_184633 | xargs rm -rf
ls -d 202406/ansible/RTA_Examen_*
git add .
git commit -m "Arreglue el exceso de carpetas RTA_Examen, deje solo la ultima"
git push
git add .
git commit -m "Limpieza de carpetas RTA_Examen, dejo solo la final"
git push
git add .
git commit -m "Saque el exceso de carpetas RTA_Examen, dejo solo la ultima"
git push
cp 202406/ansible/Punto_D.sh 202406/ansible/RTA_Examen_20251118_184633/
ls 202406/ansible/RTA_Examen_20251118_184633/
git add .
git commit -m "Punto_D.sh completo"
git push
mv 202406/ansible/Punto_D.sh RTA_Examen_20251117/Punto_D.sh
ls RTA_Examen_20251117/
ls 202406/ansible/
git add RTA_Examen_20251117/Punto_D.sh
git rm 202406/ansible/Punto_D.sh
git commit -m "Punto_D.sh completo"
git push
cd ~/UTNFRA_SO_2do_TP_Vazquez
cp -r ~/UTNFRA_SO_2do_TP_Vazquez/202406 .
cp -r ~/UTNFRA_SO_2do_TP_Vazquez/RTA_Examen_20251117_* .
ls -d 202406/ansible/RTA_Examen_*
cp -r 202406/ansible/RTA_Examen_* .
history -a
cp ~/.bash_history 
cp ~/.bash_history .
history -a
cp ~/.bash_history .
ls -l .bash_history
git add .bash_history RTA_Examen_20251117 202406
git commit -m "Punto E completo: subida de .bash_history, RTA y 202406"
git push
ls -a
ls 202406
ls RTA_Examen_20251117
git mv ruta_actual_del_archivo 202406/202406_2doParcial.pdf  
git mv ruta_script_Precondicion.sh 202406/script_Precondicion.sh  
# por ejemplo para los scripts del examen:
git mv Punto_A.sh RTA_Examen_20251117/Punto_A.sh  
# y lo mismo para los otros
ls
ls 202406
ls RTA_Examen_20251117
git mv 202406_2doParcial.pdf 202406/
git mv script_Precondicion.sh 202406/
git mv _checks 202406/
git mv ansible 202406/
git mv bash_script 202406/
git mv docker 202406/
git mv 202406_2doParcial.pdf 202406/
git mv script_Precondicion.sh 202406/
mv 202406 202406_tmp
mkdir 202406
git mv 202406_2doParcial.pdf 202406/
git mv script_Precondicion.sh 202406/
mv _checks 202406/
mv ansible 202406/
mv bash_script 202406/
mv docker 202406/
git add 202406/
historya -a
history -a
mv RTA_Examen_20251117 RTA_Examen_$(date +%Y%m%d)
