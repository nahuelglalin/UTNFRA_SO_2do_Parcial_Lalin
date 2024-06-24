 1107  echo "---- Inicio Punto C ----"
 1108  cat UTN-FRA_SO_Examenes/202406/docker/index.html 
 1109  touch UTN-FRA_SO_Examenes/202406/docker/dockerfile
 1110  vim UTN-FRA_SO_Examenes/202406/docker/dockerfile
 1111  cat UTN-FRA_SO_Examenes/202406/docker/dockerfile
 1112  docker build -t web1-Lalin UTN-FRA_SO_Examenes/202406/docker/
 1113  docker build -t web1-lalin UTN-FRA_SO_Examenes/202406/docker/
 1114  clear
 1115  sudo pvs
 1116  sudo fdisk -l /dev/sdc
 1117  sudo fdisk /dev/sdc
 1118  clear
 1119  sudo fdisk -l /dev/sdc
 1120  sudo pvs
 1121  sudo pvcreate /dev/sdc2
 1122  sudo pvs
 1123  sudo vgextend vg_datos /dev/sdc2
 1124  sudo lvs
 1125  ls /dev/mapper/vg_datos-lv_docker 
 1126  lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
 1127  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
 1128  sudo lvs
 1129  clear
 1130  df -h 
 1131  ls /dev/mapper/vg_datos-lv_docker 
 1132  sudo resize2fs /dev/mapper/vg_datos-lv_docker
 1133  df -h
 1134  clear
 1135  docker build -t web1-Lalin UTN-FRA_SO_Examenes/202406/docker/
 1136  docker build -t web1-lalin UTN-FRA_SO_Examenes/202406/docker/
 1137  docker image ls
 1138  docker run -d -p 8081:80 web1-lalin
 1139  curl localhost:8081
 1140  docker ps
 1141  docker stop 556c94e9154b
 1142  docker ps
 1143  clear
 1144  docker tag web1-lalin nahuelglalin/web1-lalin
 1145  docker push nahuelglalin/web1-lalin
 1146  touch UTN-FRA_SO_Examenes/202406/docker/run.sh
 1147  vim UTN-FRA_SO_Examenes/202406/docker/run.sh
 1148  docker run -d -p 8081
 1149  docker run -d -p 8081:80 nahuelglalin/web1-lalin
 1150  docker ps
 1151  docker stop 7b4f52806186
 1152  docker ps
 1153  clear
 1154  bash UTN-FRA_SO_Examenes/202406/docker/run.sh 
 1155  echo "---- Fin Punto C ----"
