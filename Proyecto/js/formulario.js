document.addEventListener('DOMContentLoaded', function () {
    const formulario = document.getElementById('miFormulario');
    
    formulario.addEventListener('submit', function (event) {
        event.preventDefault();

        const datos = {
            nombre: formulario.nombre.value,
            correo: formulario.correo.value,
            
            suscripcion: formulario.suscripcion.checked
        };

        localStorage.setItem('datosFormulario', JSON.stringify(datos));

        window.location.href = 'respuesta.html';
    });
});

