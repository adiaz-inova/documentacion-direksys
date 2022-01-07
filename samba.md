[< Regresar al Inicio](./README.md)

## Configuración de samba
Para entrar en contexto solo ve a samba como un servidor que ter permitira acceder a una carpeta especifica desde tu windows sin la necesidad de conectarte por ssh al servidor.

Suponiendo que tu maquina virtual sea nueva y que no tenga la isntalacion de samba puede seguir los pasos que estan en este [link](https://stackoverflow.com/c/direksys/questions/59) y omitir los siguientes pasos.


## Configuracion

En este punto tu maquina ya cuenta con el servicio de samba intalado y configurado solo que esta configurado para otra ruta y otro usuario por lo que solo hay que editar archivos.

Muevete a la carpeta de samba:

``cd /etc/samba/``

En esta ruta hay un archivo llamado: ``smb.conf``

Hay que acceder a el y editar su contenido la parte que nos interesa es la siguiente que puede estar al final de archivo:

```conf
[dev.luis]
   path = /home/www/domains
   writeable = yes
   guest ok = no
   valid users = luis
#   create mask = 0775
   browsable = yes
   public = yes
   create mode = 0775
   directory mode = 0775
   oplocks = no
```

Supngamos que el usuario que creates en el apartado: [Crear usuario en linux](./crear-usuario-en-linux.md) se llama ``manuel`` de principio debes sustituir el nombre ``luis`` por ``manuel`` y si en el apartado de ``Path`` esta otra ruta registra la correcta que si seguiste el manual debe ser ``/home/www/domains`` el resultado final es:

```conf
[dev.manuel]
   path = /home/www/domains
   writeable = yes
   guest ok = no
   valid users = manuel
#   create mask = 0775
   browsable = yes
   public = yes
   create mode = 0775
   directory mode = 0775
   oplocks = no
```

## Reiniciar samba
Ejecuta el siguente comando para reiniciar samba y que tome tu nueva configuración:

``sudo service smbd restart``

## crear usuario para samba

Debes crear un usuario para acceder a samba este puede tener el nombre de tu usuario de linux

``sudo smbpasswd -a <user_ubuntu>``

Te pedira contraseña y confirmación.

NOTA: Es posible que requiera un reinicio por parte de windows.

Ahora en un explorador de archivos coloca lo siguiente:

``\\172.20.18.59``

Recueda sustituir tu ip de la maquina virtual esto te mostra una carpeta con el dombre que le colocaste por ejemplo ``dev.manuel`` accede a ella y te pedira el password creado por el comando: ``sudo service smbd restart``. Si todo es correcto deberar ver tu carpeta domains con el contenido que ahi este.

Si asi lo prefieres puedes trabajar ahi con tu editor de codigo.

[< Regresar al Inicio](./README.md)