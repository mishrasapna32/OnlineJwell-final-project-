var cartApp = angular.module ("cartApp", []);
cartApp.controller("cartCtrl", function($scope, $http){
	
	$scope.ProductList = function() {
	$http.get("http://localhost:8079/jwell/ProductsList/all")
	.success(function(data) {
	$scope.products = data;
	});
	}

$scope.refreshCart = function(){
   $http.get('http://localhost:8079/jwell/rest/cart/' + $scope.cartId).success(function (data){
       $scope.cart = data;
   });
}

$scope.clearCart=function(){
	    	$http.put('http://localhost:8079/jwell/rest/cart/'+$scope.cartId).success(function(){
		
		$scope.refreshCart();
	});
}

$scope.initCartId = function(cartId){
    $scope.cartId = cartId;
    $scope.refreshCart(cartId);
}

$scope.addToCart = function(productId){
    $http.put('http://localhost:8079/jwell/rest/cart/add/'+productId ).success(function (){
        alert('Product successfully added to the cart!');
    });
}

$scope.removeFromCart = function(productId){
    $http.put('http://localhost:8079/jwell/rest/cart/remove/' +productId).success(function(data){
       $scope.refreshCart();
       
    });
}
$scope.getCart=function(){
	alert(cartId);
	$scope.cartId=cartId;
	$scope.refreshCart(cartId);
}
$scope.calGrandTotal = function(){
    var grandTotal = 0;

    for (var i = 0; i < $scope.cart.cartItems.length; i++){
        grandTotal += $scope.cart.cartItems[i].totalPrice;
    }

    return grandTotal;
}
});