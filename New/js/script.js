    function showNarbav() {
      var x = document.getElementById("myTopnav");
      if (x.className === "topnav") {
        x.className += " responsive";
      } else {
        x.className = "topnav";
      }
    }
    function Redirect(xyz) {
        if (xyz.length==0) {
          return;
        }
        else{
        // window.location=("search.php?kqtk="+xyz);
        window.location=("search.html?kqtk="+xyz);
        }      
    }

    function timkiem(str) {
      if (str.length==0) {
          document.getElementById("ketquatk").innerHTML="Hãy nhập gì đó !";
          return;
      }
      var xmlhttp=new XMLHttpRequest();
      xmlhttp.onreadystatechange=function() {
          if (this.readyState==4 && this.status==200) {
                document.getElementById("ketquatk").innerHTML=this.responseText;      
          }
      }
      xmlhttp.open("GET","search.php?kqtk="+str,true);
      xmlhttp.send();
      }


