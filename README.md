# TP-Objetos(Music Guide)

## Como abrir en Wollok-Eclipse
Archivo-> Open Project from File System -> Directory -> Seleccionar carpeta donde se descargo el repositorio

## Como descargar el repositorio
Se necesita <a href="https://git-scm.com/">Git</a> y una <a href="https://github.com/join">cuenta de GitHub</a>
Luego abrir una terminal/linea de comando en la carpeta donde se desea descargar el repositorio y ejecutar el siguiente comando:
```
  git clone https://github.com/Nickito12/TP-Objetos.git
  git remote add origin https://github.com/Nickito12/TP-Objetos.git
```

## Hacer cambios
Para agregar todos los cambios al proximo commit(Desde la terminal/cmd en una carpeta dentro del repositorio local):
```
  git add --all
```
Para hacer el commit:
```
  git commit -m "mensaje"
```
O sin *"-m "mensaje"* para abrir Vim y escribir ahi el mensaje(i para modo de insercion, escape para salir del modo de insercion. Para salir ":qw!" fuera del modo de insercion)
Y para "subir" al repositorio remoto(Este, en github):
```
  git push origin master
```
