// //Objeto usuario
// //Propiedades/Atributos son nombre,edad,ciudad,etc..
// //Metodos Saludar
// let usuario = {
//     nombre: 'Juan',
//     edad: 30,
//     ciudad: 'Buenos Aires',
//     saludar: function(){
//         console.log('Hola Soy ' + this.nombre + ' tengo ' + this.edad + ' años');
//     }
// }
// let usuario2 = {
//     nombre: 'Pedro',
//     edad: 32,
//     ciudad: 'Buenos Aires',
//     saludar: function(){
//         console.log('Hola Soy ' + this.nombre + ' tengo ' + this.edad + ' años');
//     }
// }
// //Propiedades/Atributos son titulo,precio,stock,etc..
// //Metodos Detalle
// let producto ={
//     titulo: 'Camisa Azul',
//     precio: 45000,
//     stock: 10,
//     detalle: function(){
//         console.log('De ' + this.titulo + ' quedan en stock ' + this.stock);
//     }
// }

// console.log(usuario.saludar());
// console.log(usuario.edad);
// console.log(usuario.ciudad);

// soyDe(usuario.ciudad);

// console.log(producto.titulo)
// console.log(producto.detalle());
// console.log(producto['precio']);

// soyDe(producto.precio)


// soyDe('Pehuajo')

// function soyDe(ciudad){
//     console.log(' Soy de la ciudad de:', ciudad);
// }

class Usuario {
    constructor(nombre,edad,dni,correo='correo@corre.com'){
        this.nombre = nombre;
        this.edad = edad;
        this.dni = dni;
        this.correo = correo;
    }
    saludar(){
        console.log('Hola Soy' + this.nombre);
    }
    darMail(){
        console.log('Mi correo es: ' + this.correo)
    }    
}

let persona1 = new Usuario ('Luciano',25,12312321);
let persona2 = new Usuario('Maria', 23, 98794,'maria@gmial.com');

let nombre = prompt('Ingrese su nombre');
let edad = prompt('Ingrese su edad');
let dni = prompt('Ingrese su dni');

let persona3 = new Usuario(nombre,edad,dni);


persona1.darMail();
persona2.darMail();
persona1.saludar();
persona2.saludar();
persona3.saludar();
console.log(persona3.edad);


















