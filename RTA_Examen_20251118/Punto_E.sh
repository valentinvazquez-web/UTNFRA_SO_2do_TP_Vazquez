sudo apt update
sudo apt install -y ca-certificates curl git ansible tree python3-apt docker.io
sudo usermod -aG docker $USER
newgrp docker
docker --version
docker run hello-world
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/valentinvazquez-web/UTNFRA_SO_2do_TP_Vazquez.git
cd UTNFRA_SO_2do_TP_Vazquez
chmod +x 202406/script_Precondicion.sh
./202406/script_Precondicion.sh
sudo cp /usr/local/bin/vazquezAltaUser-Groups.sh .
sudo chmod +x vazquezAltaUser-Groups.sh
sudo ./vazquezAltaUser-Groups.sh vagrant 202406/bash_script/Lista_Usuarios.txt
mkdir -p RTA_Examen_$(date +%Y%m%d)
cp 202406/bash_script/Punto_B.sh RTA_Examen_$(date +%Y%m%d)/
chmod +x RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
git add 202406 RTA_Examen_$(date +%Y%m%d)
git commit -m "Punto B completo"
git push origin main
cd 202406/docker
docker build -t web1-vazquez .
docker tag web1-vazquez valenvazz11/web1-vazquez:latest
docker push valenvazz11/web1-vazquez:latest
cp run.sh ../../RTA_Examen_$(date +%Y%m%d)/Punto_C.sh
chmod +x ../../RTA_Examen_$(date +%Y%m%d)/Punto_C.sh
cd ../ansible
chmod +x Punto_D.sh
./Punto_D.sh
git add roles/punto_d playbooks/punto_d_play.yml Punto_D.sh ansible.cfg
git commit -m "Punto D completo (rol, templates, playbook)"
git push origin main
ls -d RTA_Examen_* | grep -v $(date +%Y%m%d) | xargs rm -rf
mv Punto_B.sh RTA_Examen_$(date +%Y%m%d)/
mv Punto_C.sh RTA_Examen_$(date +%Y%m%d)/
mv Punto_D.sh RTA_Examen_$(date +%Y%m%d)/
git add 202406 RTA_Examen_$(date +%Y%m%d) .bash_history README.md
git commit -m "Entrega final 2do TP: 202406 completo, RTA más reciente y .bash_history"
git push origin main
