<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Book Manager </title>
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
    background-color: #F2EFE3;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #F2EFE3;
}
        </style>
    <body>
        <div class="language-area">
                        <fmt:setLocale value="en_US"/>
                        <c:if test="${param.lang=='vi'}">
                            <fmt:setLocale value="vi_VN"/>
                        </c:if>
               
                        

                        
                    </div>
                
                <fmt:setBundle basename="language.english" var="a"/>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><fmt:message bundle="${a}" key="27"/></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span><fmt:message bundle="${a}" key="28"/></span></a>

                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th><fmt:message bundle="${a}" key="29"/></th>
                            <th><fmt:message bundle="${a}" key="30"/></th>
                            <th><fmt:message bundle="${a}" key="3"/></th>
                            <th><fmt:message bundle="${a}" key="31"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listBook}" var="b">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${b.id}</td>
                                <td>${b.name}</td>
                                <td>
                                    <img src="${b.image}">
                                </td>
                                <td>${b.price} $</td>
                                <td>
                                    <a href="preedit?pid=${b.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete?id=${b.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label><fmt:message bundle="${a}" key="29"/></label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label><fmt:message bundle="${a}" key="34"/></label>
                                <input name="quantity" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label><fmt:message bundle="${a}" key="3"/></label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label><fmt:message bundle="${a}" key="30"/></label>
                                <textarea name="image" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label><fmt:message bundle="${a}" key="35"/></label>
                                <textarea name="description" class="form-control" required></textarea>
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
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="<fmt:message bundle="${a}" key="37"/>">
                            <input type="submit" class="btn btn-success" value="<fmt:message bundle="${a}" key="38"/>">
                        </div>
                    </form>
                </div>
            </div>
        </div>
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
            
        </div>
                 <a href="home"><button type="button" class="btn btn-primary"><fmt:message bundle="${a}" key="32"/></button>
    </div>
</div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" required>
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="<fmt:message bundle="${a}" key="6"/>">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/js/manager.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>