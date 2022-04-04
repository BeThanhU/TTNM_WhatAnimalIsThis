const password = document.querySelectorAll(".form .field input[type='password']"),
toggleIcon = document.querySelectorAll(".form .field i");

toggleIcon[0].onclick = () =>{
  if(password[0].type === "password"){
    password[0].type = "text";
    toggleIcon[0].classList.add("active");
  }else{
    password[0].type = "password";
    toggleIcon[0].classList.remove("active");
  }
}

{toggleIcon[1]? toggleIcon[1].onclick = () =>{
  if(password[1].type === "password"){
    password[1].type = "text";
    toggleIcon[1].classList.add("active");
  }else{
    password[1].type = "password";
    toggleIcon[1].classList.remove("active");
  }
}:""}
