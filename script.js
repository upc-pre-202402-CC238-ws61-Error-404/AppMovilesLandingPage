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
