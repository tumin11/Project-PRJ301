<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>


    <!-- Mirrored from htmldemo.net/koparion/koparion/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:51 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Cart</title>
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
    <body class="cart">
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
                <div class="entry-header-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="entry-header-title">
                                    <h2>Cart</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- entry-header-area-end -->
                <!-- cart-main-area-start -->
                <div class="cart-main-area mb-70">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="#">
                                    <div class="table-content table-responsive mb-15 border-1">

                                        <table>
                                            <thead>
                                                <tr>
                                                    <th class="product-thumbnail">Image</th>
                                                    <th class="product-name">Product</th>
                                                    <th class="product-price">Price</th>
                                                    <th class="product-quantity">Quantity</th>
                                                    <th class="product-subtotal">Total</th>
                                                    <th class="product-remove">Remove</th>
                                                </tr>
                                            </thead>
                                            <tbody>


                                            <c:choose>
                                                <c:when test="${not empty sessionScope.cart.items}">
                                                <table>

                                                    <c:forEach items="${sessionScope.cart.items}" var="item">
                                                        <tr>
                                                            <td class="product-thumbnail"><img src="${item.book.image}" alt="Product Image"/></td>
                                                            <td class="product-name">${item.book.name}</td>
                                                            <td class="product-price"><fmt:formatNumber pattern="##.#" value="${item.book.price}" type="currency"/></td>
                                                            <td>
                                                                <form action="UpdateCartServlet" method="post">
                                                                    <input type="hidden" name="productId" value="${item.book.id}" />
                                                                    <input type="number" name="quantity" readonly value="${item.quantity}" min="1" />
                                                                    
                                                                </form>
                                                            </td>
                                                            <td class="product-subtotal"><fmt:formatNumber pattern="##.#" value="${item.quantity * item.book.price}"/></td>
                                                            <td class="product-remove">
                                                                <form action="RemoveCart" method="post">
                                                                    <input type="hidden" name="productId" value="${item.book.id}" />
                                                                    <input type="submit" value="x" />
                                                                </form>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </table>

                                            </c:when>
                                            <c:otherwise>
                                                <p>Your cart is empty.</p>
                                            </c:otherwise>
                                        </c:choose>



                                        </tbody>
                                    </table>

                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-6 col-12">
                            <div class="buttons-cart mb-30">
                                <ul>

                                    <li><a href="home">Continue Shopping</a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="cart_totals">
                                <h2>Cart Totals</h2><br>
                                <c:choose>
                                    <c:when test="${not empty sessionScope.cart.items}">
                                        <table>
                                            <tbody>


                                                <tr class="order-total">
                                                    <th>Total</th>
                                                    <td>
                                                        <strong>
                                                            <span class="amount"><fmt:formatNumber pattern="##.#" value="${sessionScope.cart.getTotal()}" type="currency"/></span>
                                                        </strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </c:when>
                                </c:choose>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <!-- cart-main-area-end -->
            <!-- footer-area-start -->
            <jsp:include page="view/reuse/footer.jsp"></jsp:include>
                <!-- footer-area-end -->


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

    <!-- Mirrored from htmldemo.net/koparion/koparion/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:45 GMT -->
</html>
