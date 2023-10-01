# 1 Un servidor con un script que reviente el disco

# 2 script pra correr en todos los servers

# 3 un server de paginas webs

# prubas scp
scp archivo-a-copiar usuario@direccion-del-servidor:directorio-de-destino/
scp -i "trainingkeys.pem" pruebalogs.sh admin@34.235.157.115:/tmp

# Para el aliad
alias grecia='cd /mnt/c/Users/Gre/OneDrive/Escritorio/Study/Linux/Training\ Grecia\ CV/Sabado30/'

# Connect
ssh -i "trainingkeys.pem" admin@34.235.157.115

## como hacer un for para leer las ips de un server
#!/bin/bash
source_file="serverip.csv"
while IFS=',' read -r ipdir
do
echo $ipdir
done < "$source_file"

### como conectarse por la cli en aws 
aws confirgure

