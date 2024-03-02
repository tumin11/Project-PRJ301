

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>


    <!-- Mirrored from htmldemo.net/koparion/koparion/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:51 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Koparion – Book Shop HTML5 Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
        <!-- flexslider.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">
        <!-- chosen.min.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/chosen.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

    </head>

    <body class="shop">
        <!-- header-area-start -->
        <header>
            <!-- header-top-area-start -->
            <jsp:include page="view/reuse/header.jsp"></jsp:include>
            <jsp:include page="view/reuse/menu.jsp"></jsp:include>

            </header>
            <!-- header-area-end -->
            <!-- breadcrumbs-area-start -->
        <jsp:include page="view/reuse/breadcrumbs.jsp"></jsp:include>
            <!-- breadcrumbs-area-end -->
            <!-- shop-main-area-start -->
            <div class="shop-main-area mb-70">
                <style>
                    .mb-70 {
                        margin-bottom: 0px;
                        background-color: #F2EFE3;
                    }
                </style>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-12 col-12 order-lg-1 order-2 mt-sm-50 mt-xs-40">
                            <div class="shop-left">
                                <div class="section-title-5 mb-30">
                                    <h2>Shopping Options</h2>
                                </div>
                                <div class="left-title mb-20">
                                    <h4>Category</h4>
                                </div>
                                <div class="left-menu mb-30">
                                    <ul>
                                    <c:forEach items="${listType}" var="t">
                                        
                                        <li><a href="type?id=${t.id}">${t.type}</a></li>
                                       
                                    </c:forEach>   
                                    </ul>
                                </div>
                              
                                <div class="left-title mb-20">
                                    <h4>Price</h4>
                                </div>
                                <div class="left-menu mb-30">
                                    <ul>
                                        <li><a href="price?price1=0.00&price2=49.99">$0.00-$49.99</a></li>
                                        <li><a href="price?price1=50.00&price2=99.99">$50.00-$99.99</a></li>
                                        <li><a href="price?price1=100.00&price2=149.99">$100.00-$149.99</a></li>
                                        <li><a href="price?price1=150.00&price2=199.99">$150.00-$199.99</a></li>
                                        <li><a href="price?price1=200.00&price2=9999.9">$200.00-and above</a></li>
                                    </ul>
                                </div>
                                <div class="left-title mb-20">
                                    <h4>Top 6 Book</h4>
                                </div>
                                <div class="random-area mb-30">
                                    <div class="product-active-2 owl-carousel">
                                        <div class="product-total-2">
                                        <c:forEach items="${top6Book}" var="t">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="detail?pid=${t.id}"><img src="${t.image}" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="detail?pid=${t.id}">${t.name}</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>${t.price}</li>
                                                       
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        </c:forEach>
                                            
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="banner-area mb-30">
                                <div class="banner-img-2">
                                    <a href="#"><img src="${pageContext.request.contextPath}/img/banner/31.jpg" alt="banner" /></a>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12 col-12 order-lg-2 order-1">
                        <div class="category-image mb-30">
                            <a href="#"><img src="${pageContext.request.contextPath}/img/banner/32.jpg" alt="banner" /></a>
                        </div>
                        <div class="section-title-5 mb-30">
                           
                               <h2>Book</h2> 
                            
                            
                        </div>
                        
                        <!-- tab-area-start -->
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="th">
                                <div class="row">
                                    <c:forEach items="${listBook}" var="b">
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                        <!-- single-product-start -->
                                        <div class="product-wrapper mb-40">
                                            <div class="product-img">
                                                <a href="detail?pid=${b.id}">
                                                    <img src="${b.image}" alt="book" class="primary" />
                                                </a>
                                                
                                                
                                            </div>
                                            <div class="product-details text-center">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="detail?pid=${b.id}">${b.name}</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$${b.price}</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <!-- single-product-end -->
                                    </div>
                                    </c:forEach>
                                    
                                    
                                </div>
                            </div>
                            <div class="tab-pane fade" id="list">
                                <!-- single-shop-start -->
                                <div class="single-shop mb-30">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="product-wrapper-2">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}/img/product/3.jpg" alt="book" class="primary" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8 col-md-8 col-12">
                                            <div class="product-wrapper-content">
                                                <div class="product-details">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Crown Summit</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>$36.00</li>
                                                            <li class="old-price">$38.00</li>
                                                        </ul>
                                                    </div>
                                                    <p>The sporty Joust Duffle Bag can't be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare,... </p>
                                                </div>
                                                <div class="product-link">
                                                    <div class="product-button">
                                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                    <div class="add-to-link">
                                                        <ul>
                                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-shop-end -->
                                <!-- single-shop-start -->
                                <div class="single-shop mb-30">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="product-wrapper-2">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}/img/product/18.jpg" alt="book" class="primary" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8 col-md-8 col-12">
                                            <div class="product-wrapper-content">
                                                <div class="product-details">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Driven Backpack</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>$34.00</li>
                                                            <li class="old-price">$36.00</li>
                                                        </ul>
                                                    </div>
                                                    <p>The sporty Joust Duffle Bag can't be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare,... </p>
                                                </div>
                                                <div class="product-link">
                                                    <div class="product-button">
                                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                    <div class="add-to-link">
                                                        <ul>
                                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-shop-end -->
                                <!-- single-shop-start -->
                                <div class="single-shop mb-30">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="product-wrapper-2">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}/img/product/10.jpg" alt="book" class="primary" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8 col-md-8 col-12">
                                            <div class="product-wrapper-content">
                                                <div class="product-details">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Fusion Backpack</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>$59.00</li>
                                                        </ul>
                                                    </div>
                                                    <p>The sporty Joust Duffle Bag can't be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare,... </p>
                                                </div>
                                                <div class="product-link">
                                                    <div class="product-button">
                                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                    <div class="add-to-link">
                                                        <ul>
                                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-shop-end -->
                                <!-- single-shop-start -->
                                <div class="single-shop mb-30">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="product-wrapper-2">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}/img/product/5.jpg" alt="book" class="primary" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8 col-md-8 col-12">
                                            <div class="product-wrapper-content">
                                                <div class="product-details">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Set of Sprite Yoga Straps</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li> <span>Starting at</span>$34.00</li>
                                                        </ul>
                                                    </div>
                                                    <p>The sporty Joust Duffle Bag can't be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare,... </p>
                                                </div>
                                                <div class="product-link">
                                                    <div class="product-button">
                                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                    <div class="add-to-link">
                                                        <ul>
                                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-shop-end -->
                                <!-- single-shop-start -->
                                <div class="single-shop">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-12">
                                            <div class="product-wrapper-2">
                                                <div class="product-img">
                                                    <a href="#">
                                                        <img src="${pageContext.request.contextPath}/img/product/19.jpg" alt="book" class="primary" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8 col-md-8 col-12">
                                            <div class="product-wrapper-content">
                                                <div class="product-details">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Compete Track Tote</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>$32.00</li>
                                                        </ul>
                                                    </div>
                                                    <p>The sporty Joust Duffle Bag can't be beat - not in the gym, not on the luggage carousel, not anywhere. Big enough to haul a basketball or soccer ball and some sneakers with plenty of room to spare,... </p>
                                                </div>
                                                <div class="product-link">
                                                    <div class="product-button">
                                                        <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                    <div class="add-to-link">
                                                        <ul>
                                                            <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-shop-end -->
                            </div>
                        </div>
                        <!-- tab-area-end -->
                        <!-- pagination-area-start -->
                        <div class="pagination-area mt-50">
                            
                            <div class="page-number">
                                <c:forEach begin="1" end="4" var="i">
                                    
                                    <a href="page?index=${i}">${i}</a>
                                    
                                    
                                </c:forEach>
                                    
                            </div>
                        </div>
                        <!-- pagination-area-end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- shop-main-area-end -->
        <!-- footer-area-start -->
        <jsp:include page="view/reuse/footer.jsp"></jsp:include>
            <!-- footer-area-end -->
            <!-- Modal -->
           
        <!-- Modal end -->






        <!-- all js here -->
        <!-- jquery latest version -->
        <script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.4.min.js"></script>
        <!-- modernizr css -->
        <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>

        <!-- bootstrap js -->
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <!-- owl.carousel js -->
        <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
        <!-- meanmenu js -->
        <script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
        <!-- wow js -->
        <script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
        <!-- jquery.parallax-1.1.3.js -->
        <script src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js"></script>
        <!-- jquery.countdown.min.js -->
        <script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
        <!-- jquery.flexslider.js -->
        <script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
        <!-- chosen.jquery.min.js -->
        <script src="${pageContext.request.contextPath}/js/chosen.jquery.min.js"></script>
        <!-- jquery.counterup.min.js -->
        <script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
        <!-- waypoints.min.js -->
        <script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
        <!-- plugins js -->
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
        <!-- main js -->
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>


    <!-- Mirrored from htmldemo.net/koparion/koparion/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:52 GMT -->
</html>