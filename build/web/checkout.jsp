<%-- 
    Document   : checkout
    Created on : Jan 10, 2024, 2:08:10 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <!-- Deverlopment-side SEO -->
        <meta charset="UTF-8">
        <meta name="description" content="Khám phá thế giới ngọt ngào tại cửa hàng bánh sinh nhật Việt Nam.
              Orange Cake cung cấp một loạt các loại bánh ngọt tươi ngon, từ bánh cupcake đa dạng hương vị 
              đến bánh tart tinh tế và bánh cookie thơm phức. Hãy đến với chúng tôi để thưởng thức những trải
              nghiệm ngọt ngào và lãng mạn không thể quên!">
        <meta name="keywords" content="Bánh, sinh nhật, bánh ngọt, Việt Nam">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="robot" content="index,follow">
        <title>Check Out</title>
        <link rel="icon" type="image" href="assets/img/favicon.png">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
              rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="assets/css/flaticon.css" type="text/css">
        <link rel="stylesheet" href="assets/css/barfiller.css" type="text/css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="assets/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="assets/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="assets/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Offcanvas Menu Begin -->
        <div class="offcanvas-menu-overlay"></div>
        <div class="offcanvas-menu-wrapper">
            <div class="offcanvas__cart">
                <div class="offcanvas__cart__links">
                    <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                    <a href="#"><img src="img/icon/heart.png" alt=""></a>
                </div>
                <div class="offcanvas__cart__item">
                    <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                    <div class="cart__price">Cart: <span>$0.00</span></div>
                </div>
            </div>
            <div class="offcanvas__logo">
                <a href="./home"><img src="img/logo.png" alt=""></a>
            </div>
            <div id="mobile-menu-wrap"></div>
            <div class="offcanvas__option">
                <ul>

                    <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
                </ul>
            </div>
        </div>
        <!-- Offcanvas Menu End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="header__top__inner">
                                <div class="header__top__left">
                                    <ul>


                                        <li><a href="login">Sign in</a> <span class="arrow_carrot-down"></span></li>
                                    </ul>
                                </div>
                                <div class="header__logo">
                                    <a href="./home"><img src="img/logo.png" alt=""></a>
                                </div>
                                <div class="header__top__right">
                                    <div class="header__top__right__links">
                                        <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                                        <a href="#"><img src="img/icon/heart.png" alt=""></a>
                                    </div>
                                    <div class="header__top__right__cart">
                                        <a href="Cart?action=showcart">
                                            <img src="assets/img/icon/cart.png" alt="">
                                            <span>
                                                <c:choose>
                                                    <c:when test="${sessionScope.size > 0}">
                                                        ${sessionScope.size}
                                                    </c:when>
                                                    <c:otherwise>
                                                        0
                                                    </c:otherwise>
                                                </c:choose>
                                            </span>
                                        </a>

                                        <div class="cart__price">Cart</div>      </div>   </div>
                                </div>
                            </div>
                        </div>
                        <div class="canvas__open"><i class="fa fa-bars"></i></div>
                    </div>
                </div>
              
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <nav class="header__menu mobile-menu">
                                <ul>
                                    <li><a href="./home" style="text-decoration: none;">Home</a></li>
                                    <li><a href="page" style="text-decoration: none;">Shop</a></li>
                                    <li><a href="./news" style="text-decoration: none;">News</a></li>
                                        <c:if test="${sessionScope.admin !=null || sessionScope.staff !=null}">
                                        <li><a href="./dashboard" style="text-decoration: none;">Management</a></li>
                                        </c:if>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
        </header>
        <!-- Header Section End -->

        <!-- Breadcrumb Begin -->
        <div class="breadcrumb-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="breadcrumb__text">
                            <h2>Checkout</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="breadcrumb__links">
                            <a href="./Home.jsp">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <form action="checkout" method="POST">
                        <div class="row">
                            <div class="col-lg-8 col-md-6">
                                <h6 class="coupon__code"><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click
                                        here</a> to enter your code</h6>
                                <h6 class="checkout__title">Billing Details</h6>


                                <div class="checkout__input">
                                    <p>Full Name<span>*</span></p>
                                    <input value="${sessionScope.customer.fullName}" type="text">
                                </div>
                                <div class="checkout__input">
                                    <p>Address<span>*</span></p>
                                    <input required type="text" name="address" value="${sessionScope.customer.address}">


                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Phone<span>*</span></p>
                                            <input required name="phone" type="number" value="${sessionScope.customer.phone}">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Email<span>*</span></p>
                                            <input value="${sessionScope.customer.email}" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="checkout__input">
                                    <p>Order notes<span>*</span></p>
                                    <input type="text"
                                           placeholder="Notes about your order, e.g. special notes for delivery.">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="checkout__order">
                                    <h6 class="order__title">Your order</h6>
                                    <div class="checkout__order__products">Product <span>Total</span></div>
                                    <ul class="checkout__total__products">
                                        <c:set var="o" value="${sessionScope.cart}"/>
                                        <c:set var="counter" value="1" />
                                        <c:forEach items="${o.items}" var="i">
                                            <li><samp>${counter}.</samp> ${i.product.name} <span>${i.product.price * i.quantity }</span></li>
                                                <c:set var="counter" value="${counter + 1}" />
                                            </c:forEach>

                                    </ul>
                                    <ul class="checkout__total__all">

                                        <li>Total<span class="formattedPrice">${sessionScope.total}</span></li>
                                    </ul>


                                    <!--                                    <div class="checkout__input__checkbox">
                                                                           
                                                                            <label for="vnpay">
                                                                                VN pay <img src="assets/img/payment/VNpay" alt="">
                                                                                 <input id="vnpay" value="0" name="statuspayment" type="radio"/>
                                                                                <span class="checkmark"></span>
                                                                            </label>
                                                                        </div>
                                                                         <div class="checkout__input__checkbox">
                                                                            <label for="later">
                                                                                Pay later
                                                                                <input id="later" value="1" name="statuspayment" type="radio"/>
                                                                                <span class="checkmark"></span>
                                                                            </label>
                                                                        </div>-->
                                    <button type="submit" class="site-btn">PLACE ORDER</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer set-bg" data-setbg="img/footer-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__widget">
                            <h6>WORKING HOURS</h6>
                            <ul>
                                <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                                <li>Saturday: 10:00 am – 16:30 pm</li>
                                <li>Sunday: 10:00 am – 16:30 pm</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="#"><img src="img/footer-logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                labore dolore magna aliqua.</p>
                            <div class="footer__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__newslatter">
                            <h6>Subscribe</h6>
                            <p>Get latest updates and offers.</p>
                            <form action="#">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send-o"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                        <div class="col-lg-5">
                            <div class="copyright__widget">
                                <ul>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="#">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search End -->

        <!-- Js Plugins -->
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.nice-select.min.js"></script>
        <script src="assets/js/jquery.barfiller.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/jquery.slicknav.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/jquery.nicescroll.min.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
                            // Lấy tất cả các phần tử có class là 'formattedPrice'
                            var priceElements = document.querySelectorAll('.formattedPrice');

                            // Duyệt qua từng phần tử và định dạng giá tiền của mỗi sản phẩm
                            priceElements.forEach(function (element) {
                                var price = parseFloat(element.textContent); // Chuyển đổi giá tiền thành số
                                var formattedPrice = price.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
                                formattedPrice = formattedPrice.replace(' đ', ''); // Loại bỏ ký tự ' đ'
                                element.textContent = formattedPrice; // Gán giá tiền đã định dạng vào phần tử
                            });
        </script>
    </body>

</html>