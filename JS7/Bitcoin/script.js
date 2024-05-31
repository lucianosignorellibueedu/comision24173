// Esperar a que el contenido HTML esté cargado
document.addEventListener("DOMContentLoaded", () => {
    // Obtener referencias a elementos del DOM
    const priceLoading = document.getElementById("price-loading");
    const priceDetails = document.getElementById("price-details");
    const currentPrice = document.getElementById("current-price");
    const currency = document.getElementById("currency");
    const lastUpdated = document.getElementById("last-updated");

    // Hacer una solicitud fetch para obtener datos de la API
    fetch('https://api.coindesk.com/v1/bpi/currentprice.json')
        .then(response => {
            // Verificar si la respuesta es exitosa
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            // Convertir la respuesta a formato JSON
            return response.json();
        })
        .then(data => {
            // Extraer datos relevantes de la respuesta JSON
            const { bpi, time } = data;
            const { rate, code } = bpi.USD; //data.bpi.USD
            // data.bpi.USD.rate
            // data.bpi.USD.code
            // data.bpi.USD.description
            // Mostrar el precio actual, la moneda y la última actualización en la página
            currentPrice.textContent = rate;
            currency.textContent = code;
            lastUpdated.textContent = new Date(time.updatedISO).toLocaleString();
            // Ocultar el mensaje de carga y mostrar los detalles del precio
            priceLoading.style.display = "none";
            priceDetails.style.display = "block";
        })
        .catch(error => {
            // Manejar errores en caso de que la solicitud fetch falle
            console.error('There was a problem with the fetch operation:', error);
            // Mostrar un mensaje de error en lugar del mensaje de carga
            priceLoading.textContent = "Failed to fetch data";
        });
});
