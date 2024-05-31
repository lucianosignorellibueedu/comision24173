// Esperar a que el contenido HTML esté cargado
document.addEventListener("DOMContentLoaded", () => {
    // Obtener referencia al formulario y elementos del DOM
    const characterForm = document.getElementById("character-form");
    const characterDetails = document.getElementById("character-details");
    const errorMessage = document.getElementById("error-message");

    // Escuchar el evento de envío del formulario
    characterForm.addEventListener("submit", (event) => {
        event.preventDefault(); // Evitar el envío del formulario por defecto

        // Obtener el ID del personaje ingresado por el usuario
        const characterId = document.getElementById("character-id").value;

        // Hacer una solicitud fetch para obtener datos del personaje con el ID ingresado
        fetch(`https://rickandmortyapi.com/api/character/${characterId}`)
            .then(response => {
                // Verificar si la respuesta es exitosa
                if (!response.ok) {
                    throw new Error('Character not found');
                }
                // Convertir la respuesta a formato JSON
                return response.json();
            })
            .then(data => {
                // Mostrar los detalles del personaje en la página
                document.getElementById("character-name").textContent = data.name;
                document.getElementById("character-status").textContent = data.status;
                document.getElementById("character-species").textContent = data.species;
                document.getElementById("character-gender").textContent = data.gender;
                document.getElementById("character-origin").textContent = data.origin.name;
                // Mostrar los detalles del personaje y ocultar el mensaje de error
                characterDetails.style.display = "block";
                errorMessage.style.display = "none";
            })
            .catch(error => {
                // Manejar errores en caso de que la solicitud fetch falle
                console.error('There was a problem with the fetch operation:', error);
                // Ocultar los detalles del personaje y mostrar el mensaje de error
                characterDetails.style.display = "none";
                errorMessage.style.display = "block";
            });
    });
});
