    function showNarbav() {
      var x = document.getElementById("myTopnav");
      if (x.className === "topnav") {
        x.className += " responsive";
      } else {
        x.className = "topnav";
      }
    }
    function Redirect(input) {
        if (input.length==0) {
          return;
        }
        else{
        window.location=("search_page.php?input="+input);
        }      
    }

    function timkiem(str1,str2,str3,str4) {
      if (str1.length==0) {
          document.getElementById("ketquatk").innerHTML="Hãy nhập gì đó !";
          return;
      }
      var xmlhttp=new XMLHttpRequest();
      xmlhttp.onreadystatechange=function() {
          if (this.readyState==4 && this.status==200) {
                document.getElementById("ketquatk").innerHTML=this.responseText;      
          }
      }
      xmlhttp.open("GET","php/search.php?kqtk="+str1+"&Lop="+str2+"&Bo="+str3+"&Ho="+str4,true);
      xmlhttp.send();
      }

      function readMore() {
        const moreText = document.getElementsByClassName("more"); 
        const btnText = document.getElementById("read-more");

        if (moreText[0].style.display === "none") {
          for(var i = 0; i < moreText.length; i++) {
            moreText[i].style.display = "block";
          }
          btnText.innerHTML = "Ẩn đi"; 

        } else {
          for(var i = 0; i < moreText.length; i++) {
            moreText[i].style.display = "none";
          }
          btnText.innerHTML = "Xem thêm"; 
        }
      }
      function readMoreUpdate() {
        const moreTextUpdate = document.getElementsByClassName("moreUpdate"); 
        const btnTextUpdate = document.getElementById("read-more-update");

        if (moreTextUpdate[0].style.display === "none") {
          for(var i = 0; i < moreTextUpdate.length; i++) {
            moreTextUpdate[i].style.display = "block";
          }
          btnTextUpdate.innerHTML = "Ẩn đi"; 

        } else {
          for(var i = 0; i < moreTextUpdate.length; i++) {
            moreTextUpdate[i].style.display = "none";
          }
          btnTextUpdate.innerHTML = "Xem thêm"; 
        }
      }

      var slideIndex = 1;
      showDivs(slideIndex);

      function plusDivs(n) {
        showDivs(slideIndex += n);
      }

      function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        if (n > x.length) {
          slideIndex = 1;
        }
        if (n < 1) {
          slideIndex = x.length;
        }
        for (i = 0; i < x.length; i++) {
          x[i].style.display = "none";  
        }
        x[slideIndex-1].style.display = "block";  
      }


