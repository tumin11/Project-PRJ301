<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<footer>
   <fmt:setLocale value="en_US"/>
                        <c:if test="${param.lang=='vi'}">
                            <fmt:setLocale value="vi_VN"/>
                        </c:if>
               
                        
        
        <fmt:setBundle basename="language.english" var="a" scope="session"/>
    <!-- footer-top-start -->
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-top-menu bb-2">
                        <nav>
                            <ul>
                                <li><a href="home"><fmt:message bundle="${a}" key="9"/></a></li>
                               
                                <li><a href="#"><fmt:message bundle="${a}" key="11"/></a></li>
                                <li><a href="contact.jsp"><fmt:message bundle="${a}" key="12"/></a></li>
                                
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-top-start -->
    <!-- footer-mid-start -->
    <div class="footer-mid ptb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="single-footer br-2 xs-mb">
                                <div class="footer-title mb-20">
                                    <h3><fmt:message bundle="${a}" key="13"/></h3>
                                </div>
                                <div class="footer-mid-menu">
                                    <ul>
                                        <li><a href="about.jsp"><fmt:message bundle="${a}" key="14"/></a></li>
                                        
                                        <li><a href="#"><fmt:message bundle="${a}" key="15"/></a></li>
                                        <li><a href="#"><fmt:message bundle="${a}" key="16"/></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="single-footer br-2 xs-mb">
                                <div class="footer-title mb-20">
                                    <h3><fmt:message bundle="${a}" key="17"/></h3>
                                </div>
                                <div class="footer-mid-menu">
                                    <ul>
                                        <li><a href="contact.jsp"><fmt:message bundle="${a}" key="12"/></a></li>
                                        <li><a href="#"><fmt:message bundle="${a}" key="18"/></a></li>
                                        <li><a href="#"><fmt:message bundle="${a}" key="19"/></a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="single-footer br-2 xs-mb">
                                <div class="footer-title mb-20">
                                    <h3><fmt:message bundle="${a}" key="20"/></h3>
                                </div>
                                <div class="footer-mid-menu">
                                    <ul>
                                        <li><a href="contact.html"><fmt:message bundle="${a}" key="21"/></a></li>
                                        <li><a href="#"><fmt:message bundle="${a}" key="22"/> </a></li>
                                        <li><a href="Cart.jsp"> <fmt:message bundle="${a}" key="23"/></a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="single-footer mrg-sm">
                        <div class="footer-title mb-20">
                            <h3><fmt:message bundle="${a}" key="24"/></h3>
                        </div>
                        <div class="footer-contact">
                            <p class="adress">
                                
                                <fmt:message bundle="${a}" key="25"/>:FPT University
                            </p>
                            <p><span><fmt:message bundle="${a}" key="26"/>:</span> 0123456789</p>
                            <p><span>Email:</span> demo@example.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-mid-end -->
    <!-- footer-bottom-start -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row bt-2">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="copy-right-area">
                        <p>&copy; 2024 <strong> BookStore </strong> Made ❤️ by <a href="https://hasthemes.com/" target="_blank"><strong>Tumin</strong></a></p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="payment-img text-end">
                        <a href="#"><img src="${pageContext.request.contextPath}/img/1.png" alt="payment" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom-end -->
</footer>