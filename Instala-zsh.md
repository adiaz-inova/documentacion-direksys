Las intalacion de zsh es la misma que en cualquier entorno linux pero por algun motivo en la maquina virtual requiere el uso de root en un punto.


# Instala zsh
Para instalar solo copia y pega los siguientes comandos:
```bash
sudo apt-get install zsh
```
```bash
sudo apt-get install git-core
```
```bash
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
```

# Configurar con usuario root

Este punto es requerido por la maquina virtual para que funcione con tu usuario:

Ingresa como sudo:

Este comando te pedira la contraseña pero recuerda que en la creacion de usuario se realizo la accion de que tu usuario sea sudo asi que puedes poner tu contraseña:

```bash
sudo su
```

Le cambiamos el bash a zsh para el usuario luis. En el siguiente comando solo sustituye el comando luis por tu usuario:

```bash
chsh -s /bin/zsh luis
```

Ahora solo reinicia la marquina virtual con un: ``reboot`` al ingresar de nuevo tu usuario ya contara con zsh.
