<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tayyo | Sales Kitchen Divices</title>
  <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<!-- start header -->
     <jsp:include page="header/header.jsp"></jsp:include>

<!-- end header -->

<!-- start banner slide show -->

<!-- <div class="container-fluid">
  <img src="images/background-index/bg32.jpg" alt="banner" style="width: 100%;height: 100vh;margin-top:-125px">
</div> -->

<!-- end banner slide show -->

<!-- start banner statistic gallery -->
<div id="banner-statistic-shop">
  <div class="container my-5 py-5">
    <div class="banner-heading text-center pb-3">
      <h2 class="text-center">Shop's Products</h2>
    </div>
    <div class="banner-area row">
      <div class="col-lg-4 col-md-6 col-sm-12 mb-4 mb-lg-0 ">
        <div class="banner-area-item">
          <a href="${pageContext.request.contextPath}/dungcunhabep"><img src="images/product/bgsp/kitchen-utensils.png"
            alt="Dụng cụ nhà bếp" class="w-100 shadow-lg rounded mb-4 p-5" /></a>
        </div>
        
      </div>

      <div class="col-lg-4 col-md-6 col-sm-12 mb-4 mb-lg-0 ">
        <div class="banner-area-item">
          <a href="views/Listchaurua.html"><img src="images/product/bgsp/sink.png" alt="Chậu rửa"
            class="w-100 shadow-lg rounded mb-4 p-5" /></a>
        </div>
       
      </div>

      <div class="col-lg-4 col-md-6 col-sm-12 mb-4 mb-lg-0 ">
        <div class="banner-area-item">
          <a href="views/ListMayPhaCF.html"><img src="images/product/bgsp/coffee-maker.png" alt="Máy pha cà phê"
            class="w-100 shadow-lg rounded mb-4 p-5" /></a>
      </div>
        </div>
        

      <div class="col-lg-4 col-md-6 col-sm-12 mb-4 mb-lg-0 ">
        <div class="banner-area-item">
          <a href="views/ListtuLanh.html"><img src="images/product/bgsp/fridge.png" alt="Tủ lạnh"
            class="w-100 shadow-lg rounded mb-4 p-5" />
        </a>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 col-sm-12 mb-4 mb-lg-0 ">
        <div class="banner-area-item">
          <a href="views/ListmayHutKhoi.html"><img src="images/product/bgsp/smoke-detector.png" alt="Máy hút khói"
            class="w-100 shadow-lg rounded mb-4 p-5" /></a>
        </div>
        
      </div>

      <div class="col-lg-4 col-md-6 col-sm-12 mb-4 mb-lg-0 ">
        <div class="banner-area-item">
           <a href="views/ListvoiNuoc.html"><img src="images/product/bgsp/tap.png" alt="Vòi nước"
            class="w-100 shadow-lg  rounded mb-4 p-5" />
        </a>
        </div>
       
      </div>

    </div>
  </div>

</div>

<!-- end banner statistic gallery -->


<!-- end product area -->
     <jsp:include page="footer/footer.jsp"></jsp:include>

<a href="#" id="toTop" class="d-block" title="Back to top">
  <span id="toTopHover"></span>

</a>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>