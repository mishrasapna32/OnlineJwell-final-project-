
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 p{color:white;}
 
 
.parallax {
    /* The image used */
    background-image: url("resources/images/paral.jpg");

    /* Set a specific height */
    min-height: 500px;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

    

</style>

<title>OnlineJwell</title>
</head>
<body style="background-color:grey">




<div class="parallax">

<marquee><h2><p>WELCOME TO THE WORLD OF JEWELLERY<p></h2></marquee>

<div class="container">
  
  <div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li class="item1 active"></li>
      <li class="item2"></li>
      <li class="item3"></li>
      <li class="item4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/images/model5.jpg" alt="Chania" style="width:100%" class="img-responsive" height="345">
        <div class="carousel-caption">
          <h3>Online Jwell</h3>
          <p>Beautiful, masterful design never goes out of fashion.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/model7.jpg" alt="Chania"  style="width:100%" class="img-responsive"  height="345">
        <div class="carousel-caption">
          <h3>bangles</h3>
          <p>The ultimate in luxury and style.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images/model3.jpg" alt="Flower" style="width:100%" class="img-responsive"  height="345">
        <div class="carousel-caption">
          <h3>Earings</h3>
          <p>Our reputation shines as brightly as our jewellery</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/model8.jpg" alt="Flower"  style="width:100%" class="img-responsive"  height="345">
        <div class="carousel-caption">
          <h3>Necklace</h3>
          <p>Our reputation shines as brightly as our jewellery.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<script>
$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel();
    
    // Enable Carousel Indicators
    $(".item1").click(function(){
        $("#myCarousel").carousel(0);
    });
    $(".item2").click(function(){
        $("#myCarousel").carousel(1);
    });
    $(".item3").click(function(){
        $("#myCarousel").carousel(2);
    });
    $(".item4").click(function(){
        $("#myCarousel").carousel(3);
    });
    
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel").carousel("next");
    });
});
</script>

<div id="band" class="container text-center" color="white">
<div style="height:200px; background-color:light grey;font-size:16px">
  <h3>Online Jewell</h3>
  <p><em>We love Jewell!</em></p>
  <p>Our extensive jewellery collection, impeccable after-sale service and world-class facilities along with uncompromising dedication to personal attention offer a remarkable service experience to our customers. We consider each sale as an everlasting relationship, and believe in keeping our customers always satisfied by protecting their rights and offering the finest products through our quality conscious efforts. Without you, our efforts wouldn't have been as successful as they are today. I thank you sincerely for all your support and wish you have a wonderful buying experience with us.p
</p>
</div>
<div class="container">
<div class="row">
<div class="col-sm-4 text-center">
<img src="resources/images/n3.jpg" class="img-circle" alt="Cinque Terre" width="204" height="204">
<p><a href="#">Necklace</a></p>
</div>
<div class="col-sm-4 text-center">
<img src="resources/images/bangle.jpg" class="img-circle" alt="Cinque Terre" width="204" height="204">
<p><a href="#">Bangles</a></p>
</div>
<div class="col-sm-4 text-center">
<img src="resources/images/e1.jpg" class="img-circle" alt="Cinque Terre" width="204" height="204">
<p><a href="#">Earings</a></p>
</div>

</div>  
</div>

</div>
</div>



<!-- home page [include carousel & other details] -->

<!-- insert content of footer.jsp page -->


</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>

</body>
</html>