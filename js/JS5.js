// console.log('Clase JS 5');

// class Vehiculo {
//     constructor(marca,modelo,año){
//         this.marca = marca;
//         this.modelo = modelo;
//         this.año = año;
//     }

//     info(){
//         console.log(`Vehiculo: ${this.marca} ${this.modelo} ${this.año}`);
//     }
// }

// let auto1 = new Vehiculo('Toyota','Corolla','2010')

// auto1.info();

// for(let clave in auto1){
//     console.log(clave);
// }





// //Array/vector
// let vacio = []

// let numeros = [1,2,3,4]
// let nombres = ['Luciano','Jesus','Maria'] 

// //Arrancan desde la posicion 0
// let mixto = ['Luciano', 25, 30, true, 'Pedro'];

// //Acceder a cada uno de los elementos
// console.log(mixto[0]);
// console.log(mixto[3]);
// //Devuelve undefined 
// console.log(mixto[10]);

// console.log('La longitud del array', mixto.length);

// //Acceder a la ultimo posicion
// console.log(mixto[mixto.length-1]);
// console.log(numeros);
// console.log(mixto);

// //Recorrer el array
// for(i=0; i < mixto.length; i++){
//     console.log(mixto[i]);
// }


// // .push(obj1, obj2...) Añade uno o varios elementos al final del array. Devuelve tamaño del array.
// mixto.push('Agregamos un elemento con el push');
// mixto.push('Juan','Toyota',10,'Ines',false,10);
// mixto.push(10);
// console.log(mixto);
// // .pop() Elimina y devuelve el último elemento del array.
// console.log(mixto.pop());
// // .unshift(obj1, obj2...) Añade uno o varios elementos al inicio del array. Devuelve tamaño del array.
// mixto.unshift('Chevrolet');
// mixto.unshift('VW');

// console.log(mixto);
// // .shift() Elimina y devuelve el primer elemento del array.
// let eliminado = mixto.shift();
// console.log('Elemento eliminado',eliminado);
// console.log(mixto);
// // .concat(obj1, obj2...) Concatena los elementos (o elementos de los arrays) pasados por 
// // parámetro.
// let concatenado = [];
// concatenado = concatenado.concat(mixto,numeros);
// console.log(concatenado);

// let contact2 = numeros.concat(mixto);
// console.log(contact2);

// // .indexOf(obj, from) Devuelve la posición de la primera aparición de obj desde from.
// console.log('indexOf',contact2.indexOf(10,0));

// // .lastIndexOf(obj, from) Devuelve la posición de la última aparición de obj desde from


// console.log('lastIndexOf',contact2.lastIndexOf(10));



// console.log(contact2);
// console.log('---------------')
// // contact2.splice(1,2);
// // console.log(contact2);

// let subArray = contact2.slice(1,3);
// console.log(subArray);

// let arrayNum = [40,100,1,5,25]
// arrayNum.sort((a,b) => a-b);
// console.log(arrayNum);
// for(let item in contact2){
//     console.log(item);
// }



// GUARDAR DATOS EN EL localStorage
if (typeof(Storage) !== "undefined") {
    localStorage.setItem('nombre','Juan')
    localStorage.setItem('edad',30)
    localStorage.setItem('Apellido','Monetti')
}



































