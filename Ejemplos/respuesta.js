document.addEventListener('DOMContentLoaded', function () {
    const respuestasDiv = document.getElementById('respuestas');
    const datos = JSON.parse(localStorage.getItem('datosFormulario'));

    if (datos) {
        respuestasDiv.innerHTML = `
            <p><strong>Nombre:</strong> ${datos.nombre}</p>
            <p><strong>Correo:</strong> ${datos.correo}</p>
            <p><strong>Edad:</strong> ${datos.edad}</p>
            <p><strong>Color favorito:</strong> ${datos.color}</p>
            <p><strong>Fecha de nacimiento:</strong> ${datos.fecha}</p>
            <p><strong>Sexo:</strong> ${datos.sexo}</p>
            <p><strong>Descripción:</strong> ${datos.descripcion}</p>
            <p><strong>País:</strong> ${datos.pais}</p>
            <p><strong>Suscripción:</strong> ${datos.suscripcion ? 'Sí' : 'No'}</p>
        `;
    } else {
        respuestasDiv.innerHTML = '<p>No se encontraron datos del formulario.</p>';
    }
});
