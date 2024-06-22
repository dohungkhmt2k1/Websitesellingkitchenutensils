<%@page import="com.webkitchen.dao.ProductDAO"%>
<%@page import="com.webkitchen.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chi tiết đơn hàng</title>
<link rel="stylesheet"
	href="fontawesome-free-5.15.3-web/css/all.min.css">
<link rel="stylesheet" href="css/index.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="header/headerforproduct.jsp"></jsp:include>
	<!-- end header -->
	<!-- cart -->
	<div id="shoppingcart">
		<div class="container">
			<!-- header -->
			<div
				class="cart-page-product-header d-flex text-center mt-4 shadow-sm border"
				style="background-color: rgb(152, 170, 179);">

				<div class="cart-item-detail__product-name col-lg-2 text-left pt-2">
					<div class="form-check">
						<label for="" class="form-check-label">
							<p>Sản phẩm        </p>
						</label>
					</div>
				</div>
				<div class="cart-item-detail__unit-price col-lg-3 pt-2">
					<p>Tên sản phẩm</p>
				</div>
				<div class="cart-item-detail__unit-price col-lg-3 pt-2">
					<p>Đơn giá</p>
				</div>

				<div class="cart-item-detail__total-price col-lg-1 pt-2">
				</div>
				<div class="cart-item-detail__remove col-lg-1 pt-2">
					<p>Xóa</p>
				</div>
			</div>


			
			<%List<Product> list = ProductDAO.gioHang;%>
			<%for(Product p : list){%>
				<%out.print("<div class='cart-item d-flex mt-4 shadow-sm text-center border'style='background-color: gainsboro;'><div class='cart-item-detail__content col-lg-3 text-left py-4 mt-4'>"+p.getMaSP()+"</div><div class='cart-item-detail__content col-lg-3 text-left py-4 mt-4'><p>"+p.getTenSP()+"</p></div><div class='cart-item-detail__unit-price col-lg-2 py-4 mt-4'><p>"+p.getGiaGiam()+"</p></div><div class='cart-item-detail__quantity col-lg-2 py-3 mt-4'><div class='form-check d-flex'></div></div><div class='cart-item-detail__remove col-lg-1 py-4 mt-4'><a href='xulixoasp?masp=");%>
				<%=p.getMaSP()%>
				<%out.print("'><i class='fas fa-window-close' name='xoa'  style='font-size: 22px' ></i></a></div></div>");%>
				
			<% }%>
			
                
			<!-- cart footer -->
			<div
				class="cart--page--footer d-flex mt-4 shadow-sm text-center border">

				<div class="cart-item-detail__checkbox col-lg-1"></div>

				<div class="cart-item-detail__product-count col-lg-2  mt-2">
					Tổng số sản phẩm</div>
				<div class="cart-item-detail__total col-lg-3  mt-2">Tổng thanh
					toán</div>
				<div class="cart-item-detail--checkout col-lg-3 mt-1">
					<p>${tongthanhtoan} VNĐ</p>
				</div>
				<div class="cart-item-detail--checkout col-lg-3 mt-1">
					<a href="thanhtoan"><button class="btn btn-danger" style="width: 100%">Thanh Toán</button></a>
				</div>

			</div>
		</div>
	</div>




	<!-- start footer -->
	<jsp:include page="footer/footer.jsp"></jsp:include>

	<a href="#" id="toTop" class="d-block" title="Back to top"> <span
		id="toTopHover"></span>

	</a>
</body>

</html>