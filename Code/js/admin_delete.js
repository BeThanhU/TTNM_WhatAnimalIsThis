function Apply() {
    var xoa = document.getElementById("xoa").innerHTML;
    let text = "Bạn có chắc chắn muốn xóa.";
    if (confirm(text) == true) {
        location.href= ("php/admin_delete.php?tendv=" + xoa);
        // location.href= ("manager_page.php");

    } else {
      text = "You canceled!";
    }
    document.getElementById("demo").innerHTML = text;
  }