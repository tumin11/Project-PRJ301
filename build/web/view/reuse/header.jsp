

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header-top-area">
    <div class="container">
        <div class="row">
           
            <div class="col-lg-6 col-md-6 col-12">
                
                    <div class="language-area">
                        <fmt:setLocale value="en_US"/>
                        <c:if test="${param.lang=='vi'}">
                            <fmt:setLocale value="vi_VN"/>
                        </c:if>
               
                        <form action="" method="get">
                            <input type="radio" name="lang" value="en">
                            <label for="en">English</label>
                            <input type="radio" name="lang" value="vi">
                            <label for="vi">Vietnamese</label>
                            <input type="submit" value="Change Language"/>
                        </form>

                        
                    </div>
                
                <fmt:setBundle basename="language.english" var="a"/>


            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="account-area text-end">
                    <ul>
                        <c:if test="${sessionScope.account!=null}">
                            <li><fmt:message bundle="${a}" key="5"/> ${sessionScope.account.username}</li>
                            <li><a href="logout"><fmt:message bundle="${a}" key="6"/></a></li>
                            </c:if>

                        <c:if test="${sessionScope.account.isSeller==1}">
                            <li><a href="book_manager"><fmt:message bundle="${a}" key="7"/></a></li>
                            </c:if>


                        <c:if test="${sessionScope.account==null}">
                            <li><a href="login.jsp"><fmt:message bundle="${a}" key="8"/></a></li>
                            </c:if>


                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="header-mid-area ptb-40">
    <style>
        .ptb-40 {
            padding: 40px 0;
            background-color: #7dd7f8;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5 col-12">
                <style>
                    .col-lg-3 {
                        flex: 0 0 auto;
                        width: 25%;
                        margin-top: 150px;
                    }
                </style>
                <div class="header-search">
                    <style>
                        .header-search form a {
                            background: darkturquoise none repeat scroll 0 0;
                            color: #fff;
                            display: inline-block;
                            font-size: 18px;
                            height: 42px;
                            line-height: 40px;
                            position: absolute;
                            right: 0;
                            text-align: center;
                            top: 0;
                            width: 42px;
                            border-radius: 0 5px 5px 0px;
                        }
                        button{
                            border: 0;
                            background-color: #00CED1;
                        }
                    </style>
                    <form action="search">
                        <input name="search" type="text" placeholder="<fmt:message bundle="${a}" key="59"/>" />
                        <a href="search"><button type="submit"><i class="fa fa-search"></i></button></a>

                    </form>
                </div>
            </div>
            <div class="col-lg-6 col-md-4 col-12">
                <div class="logo-area text-center logo-xs-mrg">
                    <a href="home"><img src="${pageContext.request.contextPath}/img/logo/logo1.png" alt="logo" /></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-12">
                <style>
                    .header-mid-area .my-cart ul li>span {
                        background: darkturquoise none repeat scroll 0 0;
                        border-radius: 50%;
                        bottom: 0;
                        color: #fff;
                        display: inline-block;
                        font-size: 18px;
                        height: 30px;
                        left: 24px;
                        line-height: 30px;
                        position: absolute;
                        text-align: center;
                        width: 30px;
                    }

                </style>
                <div class="my-cart">
                    <ul>

                        <li><a href="Cart.jsp"><i class="fa fa-shopping-cart"></i><fmt:message bundle="${a}" key="60"/></a>

                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
