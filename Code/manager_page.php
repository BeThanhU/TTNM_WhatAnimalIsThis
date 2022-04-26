<?php 
  session_start();
  include_once "php/connection.php";
  if(!isset($_SESSION['user_id'])){
    header("location: login_page.php");
  }
  if($_SESSION['role'] !== 'admin'){
    header("location: index.php");
  }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/manager.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'header.php'; ?>
    <div class="content">
        <div class="table_update">
          <?php
              echo "
              <h3>Danh sách động vật trong CSDL</h3>
              <table>
              <tr>
                <th class='collum1'>Số thứ tự</th>
                <th class='collum2'>Ngày đăng</th>
                <th class='collum3'>Tên Tiếng Việt</th>
                <th class='collum4'>Tên khoa học</th>
                <th class='collum5' colspan='3'>Chức năng</th>
              </tr>";
              $sql = mysqli_query($conn, "SELECT * FROM animals");
              if(mysqli_num_rows($sql) == 0){
                  echo "
                <tr>
                    <td>Không có</td>
                    <td>Không có</td>
                    <td>Không có</td>
                    <td>Không có yêu cầu nào cả.</td>
                    <td>Không có</td>
                    <td>Không có</td>
                    <td>Không có</td>
                </tr>";
              }
              else{
                    $n = 1; 
                    while($row = mysqli_fetch_assoc($sql)){ 
                        echo "<tr>
                          <td class='status'>{$n}</td>                     
                          <td class='status'>".date_format(new DateTime($row['NgayCapNhat']), ' H:i d-m-Y')."</td>
                          <td class='status'>".$row['TenTiengViet']."</td>
                          <td class='status'>".$row['TenKhoaHoc']."</td>                        
                          <td class='status'><a href='detail_page.php?tendv=".$row['TenTiengViet']."'>Xem chi tiết</a></td>
                          <td class='status'><a href='admin_edit.php?edit=".$row['TenKhoaHoc']."'>Chỉnh sửa</a></td>
                          <td class='status'><a href='php/admin_delete.php?tendv=".$row['TenKhoaHoc']."'>Xóa</a></td>
                        </tr>";
                        $n++;
                      }
                    }                  
          ?>
          </table>
        </div>
    </div>  
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
</body>
</html>


