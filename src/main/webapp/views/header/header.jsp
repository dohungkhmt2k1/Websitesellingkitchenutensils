<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="header" style="background: url(images/background-index/bg32.jpg) no-repeat; width: 100%; height:100vh">
  <div class="container">
    <nav class="navbar navbar-expand-lg  fixed-top">
     <a href="${pageContext.request.contextPath}/" class="navbar-brand ml-5 pl-5" id="logo_shop">
        <img src="images/background-index/logo_transparent.png" alt="Tayyo">
      </a>


      <div class="collape navbar-collapse " id="collapsibleNavbar">
        <ul class="navbar-nav text-uppercase ">
          <li class="nav-item mx-3 ">
            <a class="nav-link     font-weight-bold " href="#banner-statistic-shop">Shop</a>
          </li>
          <li class="nav-item mx-3 ">
            <a class="nav-link    font-weight-bold" href="#information-page"> Contact</a>
          </li>
        </ul>
      </div>


      <div class="" id="mini-menu">
        <nav class="navbar navbar-expand ">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}/login" class="nav-link  mr-4 p-2">
                <i class="fas fa-user"></i>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link  mr-4 p-2">
                <i class="fas fa-search"></i>
              </a>
            </li>
            <li class="nav-item">
              <a href="views/shoppingcart.html" class="nav-link  mr-4 p-2">
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

</div>>