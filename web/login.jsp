<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
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
        <title>Login Form</title>
    </head>
    <body>
        <header>
            <!-- header-top-area-start -->
            <jsp:include page="view/reuse/header.jsp"></jsp:include>
            <jsp:include page="view/reuse/menu.jsp"></jsp:include>

            </header>
            <!-- header-area-end -->
            <!-- breadcrumbs-area-start -->
            <div class="breadcrumbs-area mb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumbs-menu">
                                <ul>
                                    <li><a href="home">Home</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumbs-area-end -->
            <!-- shop-main-area-start -->
            <div class="shop-main-area mb-70">
                <style>
                    .mb-70 {
                        margin-bottom: 0px;

                    }
                </style>
                <div id="logreg-forms">
                    <form class="form-signin" action="login" >
                        <style>
                            #logreg-forms form {
                                width: 100%;
                                max-width: 410px;
                                padding: 15px;
                                margin: auto;
                                background-color: #F2EFE3;
                            }
                        </style>
                        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                        <p class="text-danger">${mess}</p>
                    <input name="user"  type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                    <input name="pass"  type="password" id="inputPassword" class="form-control" placeholder="Password" required="">

                    <div class="form-group form-check">
                        <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                    </div>

                    <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                    <hr>
                    <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
                </form>

                <form action="sign_up"  class="form-signup">
                    <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                    <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                    <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                    <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

                    <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                    <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
                </form>
                <br>

            </div>
            <jsp:include page="view/reuse/footer.jsp"></jsp:include>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                <script>
                    function toggleResetPswd(e) {
                        e.preventDefault();
                        $('#logreg-forms .form-signin').toggle() // display:block or none
                        $('#logreg-forms .form-reset').toggle() // display:block or none
                    }

                    function toggleSignUp(e) {
                        e.preventDefault();
                        $('#logreg-forms .form-signin').toggle(); // display:block or none
                        $('#logreg-forms .form-signup').toggle(); // display:block or none
                    }

                    $(() => {
                        // Login Register Form
                        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                        $('#logreg-forms #btn-signup').click(toggleSignUp);
                        $('#logreg-forms #cancel_signup').click(toggleSignUp);
                    })
                </script>
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
</html>