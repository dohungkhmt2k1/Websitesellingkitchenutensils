<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">
     <link rel="stylesheet" href="css/index.css">
     <link rel="stylesheet" href="../">
     <script src="../js/javascript.js"></script>
      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Latest compiled JavaScript -->
<script src="..//bootstrap.min.js"></script>
    <title>Tayyo | Sign in</title>
</head>
<body>
        <!-- start header -->
        
<!-- form start-->
<div class="container-fluid" >
    <div class="row pt-5 justify-content-center ">
        <div class="col-md-6 col-lg-4  login-wrap">
          
            <form class="p-5 border" id="formdndk" method="post" action="${pageContext.request.contextPath}/login" >
              <div class="img d-flex align-item-center justify-content-center" id="logo_shop">  
                <a href="${pageContext.request.contextPath}/"> <img src="images/background-index/logo_transparent.png" alt=""></a>
              </div>
              <h3 class="text-center ">ĐĂNG NHẬP</h3>
              <hr>
                <div class="form-group">
                <p style="color: red;">${errorString}</p>
                  <label for="">Nhập tên người dùng:</label>
                  <div class="input-group">
                    <input type="text" class="form-control" name="txtsdt" placeholder="Nhập Tên Đăng Nhập" value="${user.userName}"><span>(*)</span>
                  </div>
                  <span id="erosdt"></span>
                 </div>
                <div class="form-group ">
                  <label for="">Nhập mật khẩu</label>
                  <div class="input-group">
                    <input type="password" class="form-control" name="txtmk" placeholder="Nhập Mật khẩu"><span>(*)</span>
                  </div>
                  <span id="eromk"></span>
                </div>
                <div class="form-group">
                  <div class="custom-control  custom-checkbox">
                    <input type="checkbox" name="luucookie" value="Y" class="custom-control-input m-0" id="exampleCheck">
                   <label class="custom-control-label" for="exampleCheck">Nhớ mật khẩu cho lần đăng nhập sau</label>
                 </div>
                </div>
                <div class="form-group">
                
                  <div class="w-100 text-md-right">
                    <a href="#">Quên mật khẩu</a>
                  </div>
                 
                </div>
                <div class="form-group">
                 <!--  <a href="../html/index.html" class="btn btn-success col-lg-12">Đăng nhập</a> -->
                 <input type="submit" class="btn btn-success col-lg-12" value= "Đăng Nhập" />
                  
                </div>
                <hr >
                <div class="text-center mt-4 w-100">
                  <p class="mb-1">
                    Chưa có tài khoản?
                  </p>
                   <!-- Button trigger modal -->
                  <a href="${pageContext.request.contextPath}/logup" id="formdki"class="text-uppercase" >Đăng kí</a>
                </div>
            </form>
 
        </div>
    </div>
</div>
      




<!-- form end-->

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
        

</body>
</html>