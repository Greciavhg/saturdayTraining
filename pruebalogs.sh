
#!/bin/bash
# ssh -i "trainingkeys.pem" admin@34.235.157.115

# cd /mnt/c/Users/Gre/OneDrive/Escritorio/Study/Linux/Training\ Grecia\ CV/Sabado30/

# ssh -i "trainingkeys.pem" admin@ec2-34-235-157-115.compute-1.amazonaws.com


# scp archivo-a-copiar usuario@direccion-del-servidor:directorio-de-destino/
# scp -i "trainingkeys.pem" pruebalogs.sh admin@34.235.157.115:/tmp

# Ruta al directorio donde se crearán los archivos de registro
log_dir="/var/log/greciatest"

# Tamaño en megabytes del archivo de registro que se generará
log_size_mb=1024  # 1 GB

# Nombre del archivo de registro
log_file="$log_dir/fill_disk.log"

# Crea un archivo de registro con el tamaño especificado
dd if=/dev/zero of="$log_file" bs=1M count="$log_size_mb"

# Notifica cuando se ha creado el archivo
echo "Se ha creado un archivo de registro de $log_size_mb MB en $log_file."

# Opcional: Llena el disco repetidamente (¡Ten cuidado!)
while true; do
  dd if=/dev/zero of="$log_file" bs=1M count="$log_size_mb"
done
