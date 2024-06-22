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
    <title>Tayyo | Sign up</title>
</head>
<body>
        <!-- start header -->
        
<!-- form start-->
<div class="container-fluid" >
    <div class="row pt-5 justify-content-center ">
        <div class="col-md-6 col-lg-4  login-wrap">
          
            <form class="p-5 border" id="formdndk" method="post"  action="${pageContext.request.contextPath}/logup" >
              <div class="img d-flex align-item-center justify-content-center" id="logo_shop">  
                <a href="${pageContext.request.contextPath}/"> <img src="images/background-index/logo_transparent.png" alt=""></a>
              </div>
              <h3 class="text-center ">ĐĂNG KÍ</h3>
              <hr >
                <div class="form-group">
                <p style="color: red;">${errorString}</p>
                  <label for="">Nhập tên đăng nhập:</label>
                  <div class="input-group">
                    <input type="tel" class="form-control" id="txtsdt" name="txtsdt" placeholder="Nhập tên đăng nhập" value = "${user.userName}"><span>(*)</span>
                  </div>
                  <span id="erosdt"></span>
                 </div>
                <div class="form-group ">
                  <label for="">Mật khẩu:</label>
                  <div class="input-group">
                    <input type="password" class="form-control" id="txtmk" name="txtmk" value = "${user.passWork}" placeholder="Nhập Mật khẩu"><span>(*)</span>
                  </div>
                  <span id="eromk"></span>
                </div>
                <div class="form-group ">
                    <label for="">Nhập lại mật khẩu:</label>
                    <div class="input-group">
                      <input type="password" class="form-control" id="txtmk2" name="txtmk2" value = "${user.passWork}" placeholder="Nhập lại Mật khẩu"><span>(*)</span>
                    </div>
                    <span id="eromk2"></span>
                  </div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="checkbox" id="check" name="check" value="1"><label for=""> Đồng ý với Tayyo về điều khoản dịch vụ và chính sách bảo mật.(*)</label>
                    </div>
                    <span id="erochk">${checkdk}</span>
                </div>
                  </script>
                <div class="form-group">
                  <input type="submit" class="btn btn-success col-lg-12" name="dangki" value ="Đăng Kí" >
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