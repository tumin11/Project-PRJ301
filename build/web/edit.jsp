
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="${pageContext.request.contextPath}/css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .table-title {
                padding-bottom: 15px;
                background: yellow;
                color: black;
                padding: 16px 30px;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;

            }
            body {
                color: #566787;
                background: darkturquoise;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }
            .table-wrapper {
    padding: 20px 25px;
    margin: 30px 0;
    border-radius: 3px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
    background-color: yellow;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #F2EFE3;
}
        </style>
    <body>
        <fmt:setLocale value="en_US"/>
                        <c:if test="${param.lang=='vi'}">
                            <fmt:setLocale value="vi_VN"/>
                        </c:if>
               
                        
        
        <fmt:setBundle basename="language.english" var="a" scope="session"/>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><fmt:message bundle="${a}" key="50"/></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="edit" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title"><fmt:message bundle="${a}" key="51"/></h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message bundle="${a}" key="29"/></label>
                                    <input value="${detail.name}" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message bundle="${a}" key="30"/></label>
                                    <input value="${detail.image}" name="image" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message bundle="${a}" key="3"/></label>
                                    <input value="${detail.price}" name="price" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message bundle="${a}" key="34"/></label>
                                    <textarea name="quantity" class="form-control" required>${detail.quantity}</textarea>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message bundle="${a}" key="35"/></label>
                                    <textarea name="description" class="form-control" required>${detail.description}</textarea>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message bundle="${a}" key="36"/></label>
                                    <select name="category" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listType}" var="o">
                                            <option value="${o.id}">${o.type}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="<fmt:message bundle="${a}" key="52"/>">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
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
            
        </div>
                 <a href="home"><button type="button" class="btn btn-primary"><fmt:message bundle="${a}" key="32"/></button>
    </div>


        <script src="${pageContext.request.contextPath}/js/manager.js" type="text/javascript"></script>
    </body>
</html>