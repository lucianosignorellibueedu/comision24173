1- Creamos un repo en GITHUB 

https://github.com/

New Repository

2- Abrimos GIT BASH
tecla inicio de windows, escribimos GIT

3- Vamos a tener que movernos a la carpeta que queremos clonar el repo
 recomendable --> C:/Repos o puede ser c/Users/SUNOMBRE

nos movemos con el comando CD 
Ejemplo cd C:/Repos C:/repositorios C:/CaC D:/Repos 


4-Registrar mis datos en git los mismos que usamos en GITHUB

 ● Proporcionar la dirección de correo: 
git config --global user.email "correodelusuario@dominio.com"  
● Proporcionar el nombre del propietario:
 git config --global user.name "NombreDelUsuario"  
● Consultar los datos que tenemos registrados:
 git config --global -e

Para salir de VIM, que es donde vemos lo que configuramos apretamos
ctrl + C y escribimos :qa y apretamos enter


5 - Clonamos el repo 

git clone https://github.com/lucianosignorellibueedu/comision24173.git

6- Confirmar que creo la carpeta con el nombre del repo
comision24173

7- Inicializamos el repo local 
git init


