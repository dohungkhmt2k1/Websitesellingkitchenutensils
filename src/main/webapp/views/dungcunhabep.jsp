<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tayyo | DungCuNhaBep</title>
  <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">
  <link rel="stylesheet" href="css/productList.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<!-- start header -->
     <jsp:include page="header/headerforproduct.jsp"></jsp:include>

<!-- end header -->

<!-- start banner slide show -->
<div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
   <div class="carousel-inner">
    <div class="carousel-item active" id="bg3">
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
            <li><a href="${pageContext.request.contextPath}/" id="li">Home</a></li>
            <li><a href="" id="li-sub">>></a></li>
            <li><a href="${pageContext.request.contextPath}/#banner-statistic-shop" id="li">Shop</a></li>
            <li><a href="" id="li-sub">>></a></li>
            <li><a href="" id="li-ip12">DungCuNhaBep</a></li>
           
        </ul>
    </div>
</div>

<!-- navleft -->
     <jsp:include page="navleftfilter.jsp"></jsp:include>
<!-- end navleft -->
<hr>
<div class="products">
       
        <a href="../html/spnoichao.html">
            <div class="product01">
            <img src="images/product/dungcunhabep/bonoichao/chaochien-119-3.jpg" alt="" id="img01">
            <div class="product-sub01">
                <p>Bộ 3 chảo chiên, nồi áp suất chống dính ceramic vân đá 3D ECORAMIC</p>
                <p>990.000đ</p>
                <span id="gia">1.399.000đ</span> 
                <span id="giam">-29%</span>
                <div class="result">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <span id="danhgia"> 106 đánh giá</span>    
                </div>
            </div>
        </div></a>
        <a href="../html/spchienkhongdau.html">
        <div class="product01">
            <img src="images/product/dungcunhabep/noichienkhongdau/MAF-09B2.png" alt="" id="img01">
            <div class="product-sub01">
                <p>🔥HÀNG CHÍNH HÃNG🔥 Nồi chiên không dầu Nine Shield_Đa năng, bảo vệ sức khỏe_dung tích 8L_BẢO HÀNH 12 THÁNG</p>
                <p>1.160.100đ</p>
                <span id="gia">1.299.000đ</span> 
                <span id="giam"">-10%</span>
                <div class="result">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <span id="danhgia"> 100 đánh giá</span>    
                </div>
            </div>
        </div>
      </a>
      <a href="../html/spvinuong.html">
        <div class="product01">
            <img src="images/product/dungcunhabep/vinuong/GP-455.png" alt="" id="img01">
            <div class="product-sub01">
                <p>Bếp nướng điện vỉ nướng điện bếp nướng điện mini bếp nướng điện đa năng chính hãng bảo hành 12 tháng</p>
                <p>299.000đ</p>
                <span id="gia">419.000đ</span> 
                <span id="giam">-50%</span>
                <div class="result">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <span id="danhgia"> 100 đánh giá</span>    
                </div>
            </div>
        </div>
      </a>
      <a href="../html/spnoichao.html">
        <div class="product01">
        <img src="images/product/dungcunhabep/bonoichao/chaochien-119-3.jpg" alt="" id="img01">
        <div class="product-sub01">
            <p>Bộ 3 chảo chiên, nồi áp suất chống dính ceramic vân đá 3D ECORAMIC</p>
            <p>990.000đ</p>
            <span id="gia">1.399.000đ</span> 
            <span id="giam">-29%</span>
            <div class="result">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <span id="danhgia"> 106 đánh giá</span>    
            </div>
        </div>
    </div></a>
    <a href="../html/spchienkhongdau.html">
    <div class="product01">
        <img src="images/product/dungcunhabep/noichienkhongdau/MAF-09B2.png" alt="" id="img01">
        <div class="product-sub01">
            <p>🔥HÀNG CHÍNH HÃNG🔥 Nồi chiên không dầu Nine Shield_Đa năng, bảo vệ sức khỏe_dung tích 8L_BẢO HÀNH 12 THÁNG</p>
            <p>1.160.100đ</p>
            <span id="gia">1.299.000đ</span> 
            <span id="giam">-10%</span>
            <div class="result">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <span id="danhgia""> 100 đánh giá</span>    
            </div>
        </div>
    </div>
  </a>
  <a href="../html/spvinuong.html">
    <div class="product01">
        <img src="images/product/dungcunhabep/vinuong/GP-455.png" alt="" id="img01">
        <div class="product-sub01">
            <p>Bếp nướng điện vỉ nướng điện bếp nướng điện mini bếp nướng điện đa năng chính hãng bảo hành 12 tháng</p>
            <p>299.000đ</p>
            <span id="gia">419.000đ</span> 
            <span id="giam">-50%</span>
            <div class="result">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <span id="danhgia"> 100 đánh giá</span>    
            </div>
        </div>
    </div>
  </a>
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