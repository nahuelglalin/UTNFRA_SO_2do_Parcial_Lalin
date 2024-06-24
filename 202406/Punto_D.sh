 1161  echo "---- Inicio Punto D ----"
 1162  history
 1163  clear
 1164  ls /tmp/
 1165  mkdir -p UTN-FRA_SO_Examenes/202406/ansible/templates
 1166  touch UTN-FRA_SO_Examenes/202406/ansible/templates/template_01.j2
 1167  touch UTN-FRA_SO_Examenes/202406/ansible/templates/template_02.j2
 1168  ansible-playbook -i UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts UTN-FRA_SO_Examenes/202406/ansible/playbook.yml 
 1169  ls /tmp/2do_parcial/
 1170  ansible-playbook -i UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts UTN-FRA_SO_Examenes/202406/ansible/playbook.yml 
 1171  tree /tmp/2do_parcial/
 1172  rm -rf /tmp/2do_parcial/alumno/datos_equipo.txt 
 1173  tree /tmp/2do_parcial/
 1174  ansible-playbook -i UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts UTN-FRA_SO_Examenes/202406/ansible/playbook.yml 
 1175  tree /tmp/2do_parcial/
 1176  cat /tmp/2do_parcial/alumno/datos_alumno.txt 
 1177  cat /tmp/2do_parcial/equipo/datos_equipo.txt 
 1178  bash Scripts/obtener_usuarios_y_grupos.sh 
 1179  sudo cat /etc/sudoers.d/2psupervisores
 1180  nsible-playbook -i UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts UTN-FRA_SO_Examenes/202406/ansible/playbook.yml 
 1181  ansible-playbook -i UTN-FRA_SO_Examenes/202406/ansible/inventory/hosts UTN-FRA_SO_Examenes/202406/ansible/playbook.yml 
 1182  echo "---- Fin Punto D ----"
