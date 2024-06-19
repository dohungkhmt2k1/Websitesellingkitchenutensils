<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tayyo | My Team </title>
    <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/style-myteam.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- start header -->
         <jsp:include page="header/headerforproduct.jsp"></jsp:include>

    <!-- end header -->

    <!-- team -->
    <section class="myTeam"  style="height:500px">
       
        <div class="container ">
            
            <div class="card mt-5">
            
            <a style="color: red;" href="${pageContext.request.contextPath}/logout"><h4>Đăng Xuất</h4></a>
            <br>
                <div class="content">
                    <div class="imgBx">
                        <img src="images/avt.jpg">
                    </div>
                
                <div class="contentBx">
                    <h3>
                       ${logined.userName}     <br> <span>0334875681</span>
                    </h3>
                </div>
            </div>
                <ul class="sci">
                    <li class="--i:1"><a href="https://www.facebook.com/DoHungIT"><i class="fab fa-facebook"></i> </a></li>
                    <li class="--i:3"><a href="https://github.com/dohungkhmt2k1"><i class="fab fa-github"></i></a></li>
                </ul>
            </div>

        </div>

    </section>
    <!-- team -->

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