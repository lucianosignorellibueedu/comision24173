// // let temp = 25;

// // if(temp > 30)
// //     console.log('Hace mucho calor')

// // let hora = 15
// // if(hora < 12)
// //     console.log('Buenos Dias')
// // else 
// //     console.log('Buenas Tardes')


// // for (let i= 0;i< 5;i++)
// //     console.log(i)

// // let contador = 0
// // while(contador < 5){
// //     console.log(contador);
// //     contador++;
// // }





// function saludar(){
//     alert('Hola Bienvenidos');
// }

// function preguntarEdad(){
//     let edad = prompt('Ingrese su edad');
//     alert('La edad ingresada es: ' + edad);
// }


// // saludar();

// // preguntarEdad();



// // Funciones sin parámetros:
// //  ● Que no devuelven valores
// function saludar(){
//     console.log('Hola Bienvenidos');
// }

// //  ● Que devuelven valores
// // function ingresarCompleto(){
// //     let nombreCompleto = prompt('Ingrese su Nombre y Apellido');
// //     return nombreCompleto;
// // }
// // function ingresarEdad()
// // {
// //     return prompt('Ingrese su edad');
// // }
// // let nomApe = ingresarCompleto();

// // alert(nomApe);

// // if(ingresarEdad() > '18')
// //     alert('Puede Ingresar');
// // else
// //     alert('Es menor de edad')

// //  Funciones con parámetros:
// //  ● Que no devuelven valores
// function mostarMensaje(mensaje){
//     alert(mensaje);
// }

// // mostarMensaje('Hola Comision buenos días')
// // mostarMensaje('Esto es otro mensaje')
// //  ● Que devuelven valores

// function calcularAreaTriangulo(base,altura = 4){
//     return (base * altura)/2
// }

// let altura = 8
// let base = 3
// let areaTriangulo = calcularAreaTriangulo(base)
// console.log('El area del triangulo es: ', areaTriangulo)



//  // Función tradicional 
// //  function cuadrado(x){ 
// //     return x*x
// //  }
// //  console.log(cuadrado(2))

// //  // Función Flecha (Arrow)

// //  let aCuadrado = x => x*x
// //  console.log(aCuadrado(2))

// //  //Tradicional
// //  function saludarMundo(mensaje){
// //     return mensaje;
// //  }

// // // Funcion flecha
// // let mostrarMensaje = (mensaje) => {
// //     return mensaje + 'Hola'    
// // }

// // console.log(mostrarMensaje('Mensaje Funcion Flecha'))

// // function sumarTradicional(a,b){
// //     return a + b;
// // }


// // let sumar = (a,b) => a + b;
// // console.log('Funcion Flecha',sumar(5,2))



// // FUCNIONES ANONIMAS
// //sin parametros y sin return
// const saludarAnonimo = function(){
//     console.log('Hola Mundo!')
// }

// saludarAnonimo(); 

// // con parametros y con return
// const sumar = function(a,b){
//     return a +b;
// }

// const resultado = sumar(5,3);
// console.log(resultado);

// let saludarPersona = function(nombre){
//     console.log('Hola ' + nombre);
// }
// saludarPersona('Pepito')


// Variable Global
let mensajeGlobal = 'Esto es una variable GLOBAL'
function global(){
    console.log(mensajeGlobal);
}
global( )
//Variable Local

function local(){
    let mensajeLocal = 'Esto es una variable LOCAL';
    console.log(mensajeLocal);
}
local()
console.log(mensajeLocal);




