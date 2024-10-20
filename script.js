let slideIndex = 1;
showTestimonial(slideIndex);

function changeTestimonial(n) {
    showTestimonial(slideIndex += n);
}

function showTestimonial(n) {
    let i;
    const slides = document.getElementsByClassName("testimonial-slide");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].classList.remove("active");
    }
    slides[slideIndex - 1].classList.add("active");
}

function toggleMenu() {
    var dropdownMenu = document.getElementById("dropdown-menu");
    if (dropdownMenu.style.display === "flex") {
        dropdownMenu.style.display = "none";
    } else {
        dropdownMenu.style.display = "flex";
    }
}

document.addEventListener('DOMContentLoaded', function() {
    const imageItems = document.querySelectorAll('#about-product .image-item');
    let currentIndex = 0;
    let carouselInterval;
    let isCarouselActive = false;

    // Iniciar o detener el carrusel dependiendo del tamaño de la pantalla
    function startCarousel() {
        const isMobile = window.innerWidth <= 768;

        if (isMobile && !isCarouselActive) {
            // Iniciar el carrusel solo si no está activo
            isCarouselActive = true;

            // Ocultar todas las imágenes excepto la primera
            imageItems.forEach(item => item.style.display = 'none');
            imageItems[0].style.display = 'block';

            // Cambiar entre las imágenes cada 3 segundos
            carouselInterval = setInterval(() => {
                imageItems[currentIndex].style.display = 'none';
                currentIndex = (currentIndex + 1) % imageItems.length;
                imageItems[currentIndex].style.display = 'block';
            }, 3000);
        } else if (!isMobile && isCarouselActive) {
            // Detener el carrusel cuando ya no es móvil
            isCarouselActive = false;
            clearInterval(carouselInterval);

            // Mostrar todas las imágenes
            imageItems.forEach(item => item.style.display = 'block');
        }
    }

    // Inicializar el comportamiento cuando se carga la página
    startCarousel();

    // Detectar cambios en el tamaño de la ventana
    window.addEventListener('resize', startCarousel);
});

document.addEventListener('DOMContentLoaded', function() {
    const imageItems = document.querySelectorAll('#about-product-images .carousel-item');
    let currentIndex = 0;
    let carouselInterval;

    function showImages() {
        imageItems.forEach(item => item.style.display = 'none');
        for (let i = 0; i < 2; i++) {
            imageItems[(currentIndex + i) % imageItems.length].style.display = 'block';
        }
    }

    function startCarousel() {
        showImages();
        carouselInterval = setInterval(() => {
            currentIndex = (currentIndex + 2) % imageItems.length;
            showImages();
        }, 3000);
    }

    function stopCarousel() {
        clearInterval(carouselInterval);
    }

    startCarousel();

    const imageCarousel = document.querySelector('.image-carousel');
    imageCarousel.addEventListener('touchstart', stopCarousel);
    imageCarousel.addEventListener('touchend', startCarousel);
});