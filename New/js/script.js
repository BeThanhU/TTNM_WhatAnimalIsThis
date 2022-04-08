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


