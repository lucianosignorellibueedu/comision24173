document.addEventListener('DOMContentLoaded', function () {
    const formulario = document.getElementById('miFormulario');
    
    formulario.addEventListener('submit', function (event) {
        event.preventDefault();

        const datos = {
            nombre: formulario.nombre.value,
            correo: formulario.correo.value,
            edad: formulario.edad.value,
            color: formulario.color.value,
            fecha: formulario.fecha.value,
            archivo: formulario.archivo.value,
            sexo: formulario.sexo.value,
            descripcion: formulario.descripcion.value,
            pais: formulario.pais.value,
            suscripcion: formulario.suscripcion.checked
        };

        localStorage.setItem('datosFormulario', JSON.stringify(datos));
        sessionStorage.setItem('datosFormulario', JSON.stringify(datos));
        window.location.href = 'respuesta.html';
    });
});
