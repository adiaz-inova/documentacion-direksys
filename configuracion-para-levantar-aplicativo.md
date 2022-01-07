# Configuracion para levantar aplicativo

En este punto si accedes a tu navegador http://le.direksys.com/ debes ver un mensaje de error ya que el aplicativo esta fallando. Si por algun motivo no se ve el error o ves otra cosa hay que revisar los puntos:

1. [Clonar repositorio](./clonar-repositorio.md)
2. [Configurar virtual host en la maquina virtual`](configurar-virtual-host-maquina-virtual.md)
3. [Configurar host en tu maquina de windows](configurar-host-maquina-windows.md)

# Configuración

Dentro del proyecto dev2.direksys.com hay que entrar en la carpeta ``cgi-bin/common`` en esa carpeta hay que generar los archivos requeridos.

En la imagen se ven los archivos que se deben generar para hacer que el sistema funcione correctamente. Esos archivos no estan en tu carpeta la imagen solo es una referencia de como debe quedar.

![Imagen](./images/configuracion-aplicativo/1.png)

Los archivos que se muestran arriba estan en la carpeta ``cgi-bin/common/ubuntu/uat`` solo hay que copiar cada uno y pasarlos a ``cgi-bin/common``

![Imagen](./images/configuracion-aplicativo/2.png)


### Configurando archivo 1 gneral.ex.cfg

En el archivo gneral.ex.cfg debes sustituir todas la lineas que contengan ``/home/www/domains/uat.direksys.com`` por ``/home/www/domains/dev2.direksys.com``.

tambien peudes solo sustituir todo ``uat.direksys.com`` por ``dev2.direksys.com``.

Esto mismo se debe hacer en cada unos de los archivos que se ven en la imagen:

![Imagen](./images/configuracion-aplicativo/1.png)

NOTA: Es importante que la copia de los archivos la hagas de la carpeta ``cgi-bin/common/ubuntu/uat`` y los paseas a ``cgi-bin/common``.

De esta forma ya puedes acceder al aplicativo web.