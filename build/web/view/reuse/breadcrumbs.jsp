<%-- 
    Document   : breadcrumbs
    Created on : Feb 25, 2024, 7:47:08 PM
    Author     : hovut
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <fmt:setLocale value="en_US"/>
                        <c:if test="${param.lang=='vi'}">
                            <fmt:setLocale value="vi_VN"/>
                        </c:if>
               
                        
        
        <fmt:setBundle basename="language.english" var="a" />
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="home"><fmt:message bundle="${a}" key="9"/></a></li>
                        <li><a href="home" class="active"><fmt:message bundle="${a}" key="10"/></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
