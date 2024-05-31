document.addEventListener('DOMContentLoaded', function () {
    const respuestasDiv = document.getElementById('respuestas');
    const datos = JSON.parse(localStorage.getItem('datosFormulario'));

    if (datos) {
        respuestasDiv.innerHTML = `
            <p><strong>Nombre:</strong> ${datos.nombre}</p>
            <p><strong>Correo:</strong> ${datos.correo}</p>
            <p><strong>Suscripción:</strong> ${datos.suscripcion ? 'Sí' : 'No'}</p>
        `;
    } else {
        respuestasDiv.innerHTML = '<p>No se encontraron datos del formulario.</p>';
    }
});
