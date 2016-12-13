 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
</script>
</head>

<body style="background-color:grey">

 <script>

    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]],
            "oSearch" : {"sSearch": searchCondition}
        });
    });
</script> 
<div ng-app="cartApp">
<div ng-controller="productcontroller" ng-init="getProducts()"></div>
<!-- SEARCH:<input type="text" ng-model="searchCondition" placeholder="search product"> -->
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-bordered table-striped table-hover">
            <thead> 
                <tr>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th>view</th>
               </tr>
           </thead>
          
            <tbody>
              <c:forEach items="${products }" var="product">
                <tr>
                <c:url value= "/resources/images/${product.productId }.png " var="src"/>
                
                    <td><img src="${src }" alt= "image" style="width:50%;height: 50% ;" ></td>
                     
                    <td>${product.productName }</td>
                    <td>${product.productCategory }</td>
                    <td>${product.productCondition }</td>
                    <td>${product.productPrice } USD </td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId }" />"><span class="glyphicon glyphicon-info-sign"></span></a></td>
                
                </tr>
                </c:forEach>
                </tbody>
                 
           
        </table>
</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>