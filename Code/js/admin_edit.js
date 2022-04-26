const form = document.querySelector(".login form"),
continueBtn = form.querySelector(".button input"),
continueBtn2 = form.querySelector(".button2 input"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e)=>{
    e.preventDefault();
}

continueBtn.onclick = ()=>{
    let text = "Bạn có chắc chắn không?";
    if (confirm(text) == true) {
      let xhr = new XMLHttpRequest();
      xhr.open("POST", "php/admin_edit.php", true);
      xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                if(data === "success"){
                  location.href="manager_page.php";
                }else{
                  errorText.style.display = "block";
                  errorText.textContent = data;
                }
            }
        }
      }
      let formData = new FormData(form);
      xhr.send(formData);
    }  
}

continueBtn2.onclick = ()=>{
  location.href="manager_page.php";
}

