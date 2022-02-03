[< Regresar al Inicio](./index.md)

# Configura host en la maquina de windows

Para este punto primero valida que cuentas con acceso de adminstrador en tu maquina ya que el archivo que se modificara requiere ese nivel de acceso:

Dirigete a la siguiente ruta en tu maquina:

``C:\Windows\System32\drivers\etc``

En esa ruta veras un archivo llamado host ese archivo hay que abrirlo con un editor de codigo: Sublimetext, visual studio code, note pad++, etc..

El archivo debe estar vacio y si no lo esta sin problema se puede borrar todo su contenido. Si solo coloca la siguiente linea:

``172.20.18.59	ls.direksys.com``

Si vienes del apartado [configurar host virtual](./configurar-virtual-host-maquina-virtual) recordaras que se coloco algo como ``ls.direksys.com`` dentro del archiivo ``.conf`` ese texto es el que se esta colocando dentro del host de windows.

La ip que se coloca es la ip que la maquina virtual tiene la cual se saco en el apartado: [Saber ip de la maquina virtual](./saber-ip-maquina-virtual.md)

Solo se debe guardar el archivo y de esta forma ya debe ser accesible al sistema por medio de un navegador:


En tu navegador accede a : ``http://ls.direksys.com/``

Pero lo mas seguro es que te muestre un error 500 esto es por que ahora solo falta configurar el sitio a nivel de codigo.


[< Regresar al Inicio](./index.md)