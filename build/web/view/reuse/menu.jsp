
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="main-menu-area d-md-none d-none d-lg-block sticky-header-1" id="header-sticky">
    <div class="container">
        <div class="row">
            <fmt:setLocale value="en_US"/>
                        <c:if test="${param.lang=='vi'}">
                            <fmt:setLocale value="vi_VN"/>
                        </c:if>
               
                       
        
        <fmt:setBundle basename="language.english" var="a" scope="session"/>
            <div class="col-lg-12">
                <div class="menu-area">
                    <nav>
                        <ul>
                            <li class="active"><a href="home"><fmt:message bundle="${a}" key="9"/><i class="fa fa-angle-down"></i></a>
                                
                            </li>
                            
                        </ul>
                    </nav>
                </div>
               
            </div>
        </div>
    </div>
</div>



