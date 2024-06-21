<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tayyo | Shopping Cart</title>
    <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">
    <link rel="stylesheet" href="css/index.css">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="header" style="background-color: rgb(127, 178, 214);">
        <div class="container">
            <nav class="navbar navbar-expand-lg  ">
                <a href="#" class="navbar-brand " id="logo_shop">
                    <img src="images/background-index/logo_transparent.png" alt="Tayyo">
                </a>
                <div class="collape navbar-collapse " id="collapsibleNavbar">
                    <ul class="navbar-nav text-uppercase ">
                        <li class="nav-item mx-3  ">
                            <a class="nav-link    font-weight-bold " href="../html/index.html">Home</a>
                        </li>
                        <li class="nav-item mx-3 ">
                            <a class="nav-link      font-weight-bold" href="../html/index.html#banner-statistic">New</a>
                        </li>
                        <li class="nav-item mx-3 ">
                            <a class="nav-link     font-weight-bold "
                                href="../html/index.html#banner-statistic-shop">Shop</a>
                        </li>
                        <li class="nav-item mx-3 ">
                            <a class="nav-link    font-weight-bold" href="#information-page">Contact</a>
                        </li>
                    </ul>
                </div>

                <div class="" id="mini-menu">
                    <nav class="navbar navbar-expand ">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="../html/signin_signup.html" class="nav-link  mr-4 p-2">
                                    <i class="fas fa-user"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link  mr-4 p-2">
                                    <i class="fas fa-search"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/giohang" class="nav-link  mr-4 p-2">
                                    <i class="fas fa-shopping-cart"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <button class="navbar-toggler text-primary " type="button" data-toggle="collapse"
                    data-target="#collapsibleNavbar">
                    <i class="fas fa-bars"></i>
                </button>
            </nav>
        </div>
    </div>
    <!-- end header -->
    <!-- cart -->
    <div id="shoppingcart" >
        <div class="container">
            <!-- header -->
            <div class="cart-page-product-header d-flex text-center mt-4 shadow-sm border" style="background-color: rgb(152, 170, 179);">
                <div class="cart-item-detail__checkbox col-lg-1">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input">
                    </div>
                </div>
                <div class="cart-item-detail__product-name col-lg-5 text-left pt-2">
                    <div class="form-check">
                        <label for="" class="form-check-label">
                            <p>Sản phẩm</p>
                        </label>
                    </div>
                </div>
                <div class="cart-item-detail__unit-price col-lg-2 pt-2">
                    <p>Đơn giá</p>
                </div>
                <div class="cart-item-detail__quantity col-lg-2 pt-2">
                    <p>Số lượng</p>
                </div>
                <div class="cart-item-detail__total-price col-lg-1 pt-2">
                    <p>Số tiền</p>
                </div>
                <div class="cart-item-detail__remove col-lg-1 pt-2">
                    <p>Xóa</p>
                </div>
            </div>


            <!-- item -->
            <div class="cart-item d-flex mt-4 shadow-sm text-center border" style="background-color: gainsboro;">
                <div class="cart-item-detail__checkbox col-lg-1">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input mt-4">
                    </div>
                </div>
                <div class="cart-item-detail__image col-lg-2 py-3">
                    <img src="../images/product/chaurua/sp1/MS-5082W1UD.png" class="align-center" width="50%" alt="">
                </div>
                <div class="cart-item-detail__content col-lg-3 text-left py-4 mt-4">
                    <p>Chau rua san pham so 1</p>
                </div>
                <div class="cart-item-detail__unit-price col-lg-2 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__quantity col-lg-2 py-3 mt-4">
                    <div class="form-check d-flex">
                        <button class="btn btn-dark" value="">-</button>
                        <input type="text" style="width:100%">
                        <button class="btn btn-dark" value="">+</button>
                    </div>
                </div>
                <div class="cart-item-detail__total-price col-lg-1 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__remove col-lg-1 py-4 mt-4">
                    <i class="fas fa-window-close" style="font-size:22px"></i>
                </div>

            </div>
            <div class="cart-item d-flex mt-4 shadow-sm text-center border" style="background-color: gainsboro;">
                <div class="cart-item-detail__checkbox col-lg-1">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input mt-4">
                    </div>
                </div>
                <div class="cart-item-detail__image col-lg-2 py-3">
                    <img src="../images/product/chaurua/sp1/MS-5082W1UD.png" class="align-center" width="50%" alt="">
                </div>
                <div class="cart-item-detail__content col-lg-3 text-left py-4 mt-4">
                    <p>Chau rua san pham so 1</p>
                </div>
                <div class="cart-item-detail__unit-price col-lg-2 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__quantity col-lg-2 py-3 mt-4">
                    <div class="form-check d-flex">
                        <button class="btn btn-dark" value="">-</button>
                        <input type="text" style="width:100%">
                        <button class="btn btn-dark" value="">+</button>
                    </div>
                </div>
                <div class="cart-item-detail__total-price col-lg-1 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__remove col-lg-1 py-4 mt-4">
                    <i class="fas fa-window-close" style="font-size:22px"></i>
                </div>

            </div>

            <div class="cart-item d-flex mt-4 shadow-sm text-center border" style="background-color: gainsboro;">
                <div class="cart-item-detail__checkbox col-lg-1">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input mt-4">
                    </div>
                </div>
                <div class="cart-item-detail__image col-lg-2 py-3">
                    <img src="../images/product/chaurua/sp1/MS-5082W1UD.png" class="align-center" width="50%" alt="">
                </div>
                <div class="cart-item-detail__content col-lg-3 text-left py-4 mt-4">
                    <p>Chau rua san pham so 1</p>
                </div>
                <div class="cart-item-detail__unit-price col-lg-2 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__quantity col-lg-2 py-3 mt-4">
                    <div class="form-check d-flex">
                        <button class="btn btn-dark" value="">-</button>
                        <input type="text" style="width:100%">
                        <button class="btn btn-dark" value="">+</button>
                    </div>
                </div>
                <div class="cart-item-detail__total-price col-lg-1 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__remove col-lg-1 py-4 mt-4">
                    <i class="fas fa-window-close" style="font-size:22px"></i>
                </div>

            </div>

            <div class="cart-item d-flex mt-4 shadow-sm text-center border" style="background-color: gainsboro;">
                <div class="cart-item-detail__checkbox col-lg-1">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input mt-4">
                    </div>
                </div>
                <div class="cart-item-detail__image col-lg-2 py-3">
                    <img src="../images/product/chaurua/sp1/MS-5082W1UD.png" class="align-center" width="50%" alt="">
                </div>
                <div class="cart-item-detail__content col-lg-3 text-left py-4 mt-4">
                    <p>Chau rua san pham so 1</p>
                </div>
                <div class="cart-item-detail__unit-price col-lg-2 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__quantity col-lg-2 py-3 mt-4">
                    <div class="form-check d-flex">
                        <button class="btn btn-dark" value="">-</button>
                        <input type="text" style="width:100%">
                        <button class="btn btn-dark" value="">+</button>
                    </div>
                </div>
                <div class="cart-item-detail__total-price col-lg-1 py-4 mt-4">
                    <p>$38.01</p>
                </div>
                <div class="cart-item-detail__remove col-lg-1 py-4 mt-4">
                    <i class="fas fa-window-close" style="font-size:22px"></i>
                </div>

            </div>




            <!-- cart footer -->
            <div class="cart--page--footer d-flex mt-4 shadow-sm text-center border">

                <div class="cart-item-detail__checkbox col-lg-1">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input">
                    </div>
                </div>
                <div class="cart-item-detail__product-name col-lg-2 text-left mt-2">
                    <div class="form-check">
                        <label for="" class="form-check-label">
                            <p>Chọn tất cả</p>
                        </label>
                    </div>
                </div>

                <div class="cart-item-detail__remove col-lg-1 mt-1">
                    <button class="btn btn-primary">Xóa</button>
                </div>
                <div class="cart-item-detail__product-count col-lg-2  mt-2">
                    Tổng số sản phẩm
                </div>
                <div class="cart-item-detail__total col-lg-3  mt-2">
                    Tổng thanh toán
                </div>
                <div class="cart-item-detail--checkout col-lg-3 mt-1">
                    <button class="btn btn-danger" style="width:100%">Mua hàng</button>
                </div>

            </div>
        </div>
    </div>
    



    <!-- start footer -->
         <jsp:include page="footer/footer.jsp"></jsp:include>

    <a href="#" id="toTop" class="d-block" title="Back to top">
        <span id="toTopHover"></span>
    
    </a>
</body>

</html>