<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- start footer -->
<footer>
  <div class="container">
    <div id="information-page" class="row">
      <div class="col-lg-7 col-sm-12">
        <div id="contact">
          <div class="contact-title-top pt-5 pb-3 mb-2">
            <img src="images/background-index/logo_transparent.png" alt="">
          </div>
          <ul class="contact-title-main">
            <li class="pt-3 mb-2">Đây là một trang web cơ bản sử dụng jsp servlet html css.</li>
            <li class="pt-3 mb-2" class="address"><strong>ADDRESS</strong> Quận 12, Thành phố Hồ Chí Minh.
            </li>
            <li class="pt-3 mb-2" class="address"><strong>PHONE</strong> (+84) 334875681</li>
            <li class="pt-3 mb-2" class="address"><strong>E-MAIL</strong> quetoibinhdinh2k1@gmail.com</li>
          </ul>

        </div>
      </div>

      <div class="col-lg-5 col-sm-12">
        <div id="getEmail">
          <div class="getEmail-title-top pt-5  mt-5 mb-3 ml-2 ">
            <h4>Newsletter and Social</h4>
          </div>
          <div class="getEmail-title-main py-3 mb-3">
            <div class="getEmail-title-main-inner">
              <p class="ml-2">Get E-mail updates about our latest shop and special offers.</p>
              <div class="input-group my-3">
                <input type="text" class="form-control" placeholder="quetoibinhdinh2k1@gmail.com">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-default" type="button">Subscribe</button>
                </div>
              </div>
            </div>
            <div class="getEmail-title-main-social-link row justify-content-around my-4 ml-n3 mr-1">
              <a href="https://vi-vn.facebook.com/login/web/"><img src="images/background-index/icon/fb-icon.png"
                  alt="fb-icon"></a>
              <a href="https://twitter.com/login?lang=vi"><img src="images/background-index/icon/twitter-icon.png"
                  alt="twitter-icon"></a>
              <a href="https://www.instagram.com/accounts/login/"><img src="images/background-index/icon/ig-icon.png"
                  alt="ig-icon"></a>
              <a href="https://www.google.com/"><img src="images/background-index/icon/ggplus.png"
                  alt="ggplus-icon"></a>
            </div>
          </div>
        </div>
        <div class="col-lg-12 d-inline-flex justify-content-around">
          <a href="${pageContext.request.contextPath}/contact">
            <h4>My contact</h4>
          </a>
        </div>


      </div>
    </div>

</footer>
<!-- end footer -->