
function ktsdt(){
    var sdt=document.getElementById("txtsdt").value;
    var regexsdt = /^(0|\+84)(\s|\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\d)(\s|\.)?(\d{3})(\s|\.)?(\d{3})$/;
    if (regexsdt.test(sdt)) {
      
    } else {
        document.getElementById("erosdt").innerHTML="(số điện thoại gồm 10 số)";
    }
}
function ktmk(){
    var mk = document.getElementById("txtmk").value;
    var regexmk = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{3}$/
    if (regexmk.test(mk)) {
        
    } else {
        document.getElementById("eromk").innerHTML="(có ít nhất 3 kí tự, gồm Có ít nhất một kí tự viết thường (a-z),Có ít nhất một kí tự viết hoa (A-Z),Có ít nhất một chữ số (0-9))";

    }
}
function ktmk2() {
    var mk2 = document.getElementById("txtmk2").value;
    var mk = document.getElementById("txtmk").value;
    if (mk==mk2) {

    } else {
        document.getElementById("eromk2").innerHTML="mật khẩu không trùng"
    }
}

function currentDiv(n) {
    showDivs(slideIndex = n);
}
  
function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    if (n > x.length) {slideIndex = 1}
    if (n < 1) {slideIndex = x.length}
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
    }
    x[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " w3-opacity-off";
}
//<![CDATA[
$('input.input-qty').each(function() {
  var $this = $(this),
    qty = $this.parent().find('.is-form'),
    min = Number($this.attr('min')),
    max = Number($this.attr('max'))
  if (min == 0) {
    var d = 0
  } else d = min
  $(qty).on('click', function() {
    if ($(this).hasClass('minus')) {
      if (d > min) d += -1
    } else if ($(this).hasClass('plus')) {
      var x = Number($this.val()) + 1
      if (x <= max) d += 1
    }
    $this.attr('value', d).val(d)
  })
})
//]]>