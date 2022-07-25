* {
    margin: 0;
    padding: 0;
    font-family: "Fira sans", sans-serif;
    color: #EFE7E2 !important;
    text-decoration: none !important;
    box-shadow: none !important;
}
ul,li {
    padding: 0;
    margin: 0;
}
body {
    background: #3B322D !important;
}
.header__title {
    margin-right: 70px;
    font-weight: 700;
    font-size: 32px;
}
.nav_item {
    margin-right: 10px;
}
.nav-link {
    font-weight: 400;
    font-size: 16px;
}
.nav-link:hover{
    color: #FF6E40 !important;
}
/* main header*/
.main {
    width: 100%;
    height: 1000px;
    background-image: url("../img/bg.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    z-index: 2;
}
.main__title {
    padding: 40px 0 0 62px;
    font-weight: 900;
    font-size: 70px;
}
.main__btn {
    position: absolute;
    top: 872px;
    left: 94px;
    background-color: #FF6E40;
    padding: 18px 50px;
    border-radius: 0;
    font-weight: 700;
    font-size: 20px;
    outline: none;
    border: 0;
    transition: 0.2s;
}
.main__btn, .about-us_btn-big:hover{
    background-color: #f85625;
    border: 1px solid #f85625 !important;
}
/* main footer */
.main__footer {
    position: relative;
    top:-306px;
    background: #251D1A;
    width: 100%;
    height: 694px;
    z-index: 1;
}
.main__footer_content {
    position: relative;
    top: 434px;
}
.main__footer-card {
    padding: 8px 0;
    width: 300px;
    height: 232px;
    background-color: transparent;
    text-align: center;
    transition: 0.3s;
}
.main__footer-card:hover {
    background: #3B322D;
}
.card_img-top {
    margin: 0 auto;
    width: 78px;
    height: 78px;
}
/* common card, title end text*/
.common__card {
    text-align: center;
    background: transparent;
    border: 0;
    width: 50%;
    margin:0 auto 60px auto;
}
.common__title {
    font-weight: 700;
    font-size: 48px;
    margin-bottom: 10px;
}
.common__text {
    font-weight: 400;
    font-size: 15px;
}
/* about us */
.about-us_big-img {
   width: 486px; 
   height: 336px;
}
.about-us_small-img {
    width: 230px;
    height: 230px;
}
.about-us_button {
    margin: 60px 0 120px 0;
}
.about-us_btn-big, .about-us_btn-small {
    background: transparent;
    border-radius: 0;
    border: 1px solid #EFE7E2 !important;
}
.about-us_btn-small {
    padding: 18px;
    margin-left: 30px;
}
.about-us_btn-small:hover{
    background: #000;
    border: 1px solid #000 !important;
}
.about-us_btn-big {
    padding: 18px 50px;
}
/* testimonials */
.testimonials {
    margin-bottom: 156px;
}
/* slider */
.slider {
    margin: 0 auto;
    max-width: 89%;
}
.slider__item {
    padding: 0 20px 0 0;
}
.slider__item .card-title {
    font-size: 18px;
    font-weight: bold;
    margin: 15px 0;
}
.slider__item >img{
    width: 240px;
    height: 280px;
}
.slick-prev, .slick-next {
    top: 32% !important;
}
/* our price */
.our-price {
    margin: 130px 0;
    padding: 120px 0;
    background: #251D1A;
}
.our-price .col_1, .col_2 {
    display: flex;
}
.our-price_card {
    background: transparent;
    display: inline-block;
}
.our-price_card>img{
    width: 280px;
    height: 283px;
}
.our-price__list-group .list-group-item{
    background: transparent !important;
    font-size: 20px;
}
/* map */
.maps__contact .list-group-item {
     background: #251D1A;
}
.maps__contact {
    position: absolute;
    top: 15%;
    left: 15%;
}

/* responsive tab */
@media (max-width: 991px) {
    .main__footer {
        height: 900px;
    }
    .main__footer_content {
        position: relative;
        top: 360px;
    }
    .card_img-top {
        width: 50px;
        height: 50px;
    }
    .about-us_row {
        margin: 0 0 0 13%;
    }
    .about-us_button {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .about-us_btn-small {
        margin-top: 20px;
    }
    .slider__item {
        margin-left: 20px;
    }
    .slick-prev {
        left: 0 !important;
    }
    .our-price_content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .our-price_content .col_1{
        margin-bottom: 20px;
    }
}

/* responsive mobil */
@media (max-width: 767px) {
    .main__footer {
        height: 1110px;
    }
    .main__title {
        font-size: 40px;
        padding: 24px 0 0 16px;
    }
    .main__btn {
        top: 480px;
        left: 15%;
    }
    .m-sm-3 {
        margin: 10px auto;
    }
    .about-us_cols {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .about-us_row {
        margin: 0;
    }
    .about-us_big-img {
        width: 350px;
        margin: 0;
    }
    .about-us_small-img {
        width: 100%;
        margin: 10px 0;
    }
    .our-price_content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .our-price .col_1, .col_2 {
        display: block;
    }
    .our-price_card {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .slider__item >img{
        width: 280px;
        height: 280px;
    }
    .slick-prev {
        left: -5% !important;
    }
    .mb-sm_2{
        margin-bottom: 20px;
    }
    .our-price__list-group {
        width: 100%;
    }
    .our-price__list-group .list-group-item {
        font-size: 16px;
    }
}
