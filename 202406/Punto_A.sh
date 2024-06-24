 1043  echo "---- Inicio Punto A ----"
 1044  sudo fdisk -l 
 1045  clear
 1046  sudo fdisk /dev/sdb
 1047  sudo fdisk /dev/sdc
 1048  clear
 1049  sudo fdisk -l /dev/sdb
 1050  sudo fdisk -l /dev/sdc
 1051  sudo fdisk -l /dev/sdb
 1052  sudo fdisk -l /dev/sdc
 1053  sudo pvcreate /dev/sdb1
 1054  sudo pvcreate /dev/sdb2
 1055  sudo pvcreate /dev/sdc1
 1056  clear
 1057  sudo pvs
 1058  sudo vgs
 1059  sudo vgcreate vg_datos /dev/sdb2 /dev/sdc1
 1060  sudo pvs
 1061  sudo vgs
 1062  sudo vgcreate vg_temp /dev/sdb1
 1063  clear
 1064  sudo pvs
 1065  sudo vgs
 1066  sudo lvcreate -l +100%FREE vg_temp -n lv_swap
 1067  sudo lvcreate -L +5M vg_datos -n lv_docker
 1068  sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
 1069  clear
 1070  sudo lvs
 1071  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
 1072  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
 1073  sudo mkswap /dev/mapper/vg_temp-lv_swap 
 1074  free -h
 1075  sudo swapon /dev/mapper/vg_temp-lv_swap
 1076  free -h
 1077  clear
 1078  mkdir -p /work
 1079  sudo mkdir -p /work
 1080  tree /work/
 1081  clear
 1082  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
 1083  sudo mount /dev/mapper/g_datos-lv_workareas /work/
 1084  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
 1085  clear
 1086  df -h
 1087  sudo systemctl restart docker
 1088  sudo systemctl status docker
 1089  echo "----- Fin punto A -----"
