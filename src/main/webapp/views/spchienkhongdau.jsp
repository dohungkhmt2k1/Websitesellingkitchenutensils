<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tayyo | chienkhongdau</title>
  <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">
  <link rel="stylesheet" href="css/productDetail.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="js/javascript.js"></script>
</head>


<!-- start header -->
<jsp:include page="header/headerforproduct.jsp"></jsp:include>
<!-- start banner slide show -->


<div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/product/dungcunhabep/bg3.jpg" alt="First slide" class="d-block w-100">
      </div>
    </div>
  
    <a href="#carouselExampleIndicators" role="button" class="carousel-control-prev" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a href="#carouselExampleIndicators" role="button" class="carousel-control-next" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
  <!-- end banner slide show -->
  
<!-- start product area -->
<div class="bannel-nav">
    <div class="nav-sub">
        <ul>
            <li><a href="html/index.html" id="li">Home</a></li>
            <li><a href="" id="li-sub">>></a></li>
            <li><a href="html/index.html#banner-statistic-shop" id="li">Shop</a></li>
            <li><a href="" id="li-sub">>></a></li>
            <li><a href="html/Listdungcunhabep.html" id="li-ip12">DungCuNhaBep</a></li>
            <li><a href="" id="li-sub">>></a></li>
            <li><a href="#" id="li-ip12">Nồi chiên không dầu Nine Shield_Đa năng</a></li>
        </ul>
    </div>
</div>


<div >
  <div class="container" id="producdetail">
      <div class="row">
          <div class="col-sm-5">
            <div id="product-area">
              <div id="imgdetail">
                <img class="mySlides"  src="images/product/dungcunhabep/noichienkhongdau/MAF-09B2.png">
                <img class="mySlides" style="display: none; " src="images/product/dungcunhabep/noichienkhongdau/MAF-09B5.png">
                <img class="mySlides" style="display: none;" src="images/product/dungcunhabep/noichienkhongdau/MAF-09B7.png">
              </div>
              <div class="container">
                <div class="row">
                  <div class="col-12">
                    <div id="carousel-product1" style="height: 100px;" class="carousel slide" data-ride="carousel" data-interval="0">
                      <!-- Carousel indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#carousel-product1" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-product1" data-slide-to="1"></li>
                      </ol>
                      <!-- Wrapper for carousel items -->
                      <div class="carousel-inner">
                        <div class="item carousel-item active">
                          <div class=" row ">
                            <div class="product-item col-sm-4 ">
                              <div class="product-item-img" >
                                <img class="demo" onclick="currentDiv(1)"  src="images/product/dungcunhabep/noichienkhongdau/MAF-09B2.png">
                              </div>
                            </div>
                            <div class="product-item col-sm-4 ">
                              <div class="product-item-img">
                               <img class="demo"onclick="currentDiv(2)"onclick="imgchitiet()"  src="images/product/dungcunhabep/noichienkhongdau/MAF-09B5.png" >
                              </div>
                              
                            </div>
            
                            <div class="product-item col-sm-4 ">
                              <div class="product-item-img">
                               <img class="demo"onclick="currentDiv(3)" src="images/product/dungcunhabep/noichienkhongdau/MAF-09B7.png">
                              </div>
                             
                            </div>
                           
            
                          </div>
                        </div>
                        <div class="item carousel-item ">
                          <div class=" row ">
                            <div class="product-item col-sm-4 ">
                              <div class="product-item-img">
                                <img class="demo" onclick="currentDiv(1)"  src="images/product/dungcunhabep/noichienkhongdau/MAF-09B2.png">
                              </div>
                            </div>
                            <div class="product-item col-sm-4 ">
                              <div class="product-item-img">
                               <img class="demo"onclick="currentDiv(2)"onclick="imgchitiet()"  src="images/product/dungcunhabep/noichienkhongdau/MAF-09B5.png" >
                              </div>
                              
                            </div>
            
                            <div class="product-item col-sm-4 ">
                              <div class="product-item-img">
                               <img class="demo"onclick="currentDiv(3)" src="images/product/dungcunhabep/noichienkhongdau/MAF-09B7.png">
                              </div>
                             
                            </div>
                           
            
                          </div>
                        </div>
                      </div>
                      <!-- Carousel controls -->
                      <div>
                        <a class="carousel-control left carousel-control-prev" href="#carousel-product1" data-slide="prev">
                          <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="carousel-control right carousel-control-next" href="#carousel-product1" data-slide="next">
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
            
                    </div>
            
                  </div>
                </div>
              </div>
            </div>
            
          </div>
          <div class="col-sm-7">
          <div> 
            <h3 class="tensp">${product.tenSP}</h3>
          </div>
          <div class="result">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
        </div>
          <div ><h2><span id="giagoc">${product.giaGoc} </span>&ensp;${product.giaGiam}&ensp;<span>GIẢM 50% </span></h2></div>
          <br>
          <div>
              <table>
                <tr>
                  <td>Vận chuyển &ensp;</td>
                  <td>Miễn Phí Vận Chuyển <br> Miễn Phí Vận Chuyển khi đơn đạt giá trị tối thiểu</td>
                </tr>
                <tr>
                  <td> <br> </td>
                </tr>
                <tr>
                  <td><br> số lượng &ensp;</td>
                  <td> 
                    <div class="buttons_added">
                      <input class="minus is-form" type="button" value="-">
                      <input aria-label="quantity" class="input-qty" max="50" min="1" name="" type="number" value="1">                      <input class="plus is-form" type="button" value="+">
                    </div>
                  </td>
                </tr>
                <tr>
                  <td></td>
                  <td><br><a href="giohang"><input type="submit" id="muangay" value="mua ngay"></a></td>
                </tr>
              </table>
          </div>
          </div>
      </div>
  </div>
</div>

<!-- end product area -->

<!-- start footer -->
<jsp:include page="footer/footer.jsp"></jsp:include>
<!-- end footer -->


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