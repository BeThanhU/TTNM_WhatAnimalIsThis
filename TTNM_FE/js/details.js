const productImages = document.querySelectorAll(".product-images img");
const productImageSlide = document.querySelector(".image-slider");

let activeImageSlide = 0;

productImages.forEach((item, i) => {
    item.addEventListener('click', () => {
        productImages[activeImageSlide].classList.remove('active');
        item.classList.add('active');
        productImageSlide.style.backgroundImage = `url('${item.src}')`;
        activeImageSlide = i;
    })
})

//color buttons

const colorBtns = document.querySelectorAll('.color-radio-btn');
let checkedBtn = 0;

colorBtns.forEach((item, i) => {
    item.addEventListener('click', () => {
        colorBtns[checkedBtn].classList.remove('check');
        item.classList.add('check');
        checkedBtn = i;
    })
})

/*==================== TESTIMONIAL ====================*/
var swiperTestimonial = new Swiper('.image-slider', {
    loop: true,
    grabCursor: true,
    spaceBetween: 48,

    pagination: {
        el: '.swiper-pagination',
        dynamicBullets: true,
        clickable: true,
    },
    breakpoints:{
        568:{
            slidesPerView: 2, 
        }
    }
});














// ``