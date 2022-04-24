<?php 
  session_start();
  include_once "php/connection.php";
  if(!isset($_SESSION['user_id'])){
    header("location: login_page.php");
  }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/users.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'header.php'; ?>
    <div class="content">
        <?php         
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE user_id = {$_SESSION['user_id']}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
        <div class="avatar">
            <img src="images/<?php echo $row['img']; ?>" alt="">
        </div>
        <div class="fullname">
                <p><?php echo $row['fullname']?></p>
        </div>
        <div class="button">
            <div class="update">
                <a href="update_page.php">Cập nhật CSDL</a>
            </div>
            <div class="logout">
                <a href="php/logout.php?logout_id=<?php echo $row['user_id']; ?>">Đăng xuất</a>
            </div>
        </div>
        <div class="table_update">
          <?php
            if ($_SESSION['role'] === 'user') {
              echo "<table>
              <tr>
                <th>Ngày gửi</th>
                <th>Yêu cầu đã gửi</th>
                <th>Trạng thái</th>
              </tr>";
              $sql2 = mysqli_query($conn, "SELECT * FROM animals_update WHERE NguoiYeuCau = '{$_SESSION['user_id']}' ORDER BY NgayCapNhat DESC");
              if(mysqli_num_rows($sql2) == 0){
                  echo "
                  <tr>
                      <td>Không có</td>
                      <td>Chưa gửi yêu cầu nào cả.</td>
                      <td>Không có</td>
                    </tr>";
              }
              else{ 
                      while($row = mysqli_fetch_assoc($sql2)){ 
                        echo "<tr>                      
                          <td class='status'>".date_format(new DateTime($row['NgayCapNhat']), ' H:i d-m-Y')."</td>
                          <td>Bạn đã gửi yêu cầu cập nhật ".$row['TenKhoaHoc']."</td>
                          <td class='status'>".$row['TrangThai']."</td>
                        </tr>";
                      }
                    }
            }
            else{
              echo "
              <h3>Danh sách chờ duyệt</h3>
              <table>
              <tr>
                <th>Ngày gửi</th>
                <th>Người gửi</th>
                <th>Yêu cầu</th>
                <th>Chức năng</th>
              </tr>";
              $sql3 = mysqli_query($conn, "SELECT * FROM animals_update INNER JOIN users 
                                            ON animals_update.NguoiYeuCau = users.user_id 
                                            WHERE animals_update.TrangThai = 'Chờ duyệt' 
                                            ORDER BY NgayCapNhat DESC");
              if(mysqli_num_rows($sql3) == 0){
                  echo "
                  <tr>
                      <td>Không có</td>
                      <td>Không có</td>
                      <td>Không có yêu cầu nào cả.</td>
                      <td>Không có</td>
                    </tr>";
              }
              else{ 
                    while($row = mysqli_fetch_assoc($sql3)){ 
                        echo "<tr>                      
                          <td class='status'>".date_format(new DateTime($row['NgayCapNhat']), ' H:i d-m-Y')."</td>
                          <td class='status'>".$row['fullname']."</td>
                          <td>Yêu cầu cập nhật ".$row['TenKhoaHoc']."</td>
                          <td><a href='admin_update.php?update=".$row['TenKhoaHoc']."'>Xem chi tiết</a></td>
                        </tr>";
                      }
                    }
              
                    echo "
                    <table>
                    <h3>Danh sách đã duyệt</h3>
                    <tr>
                      <th>Ngày gửi</th>
                      <th>Người gửi</th>
                      <th>Yêu cầu</th>
                      <th>Chức năng</th>
                    </tr>";
                    $sql3 = mysqli_query($conn, "SELECT * FROM animals_update INNER JOIN users 
                                                  ON animals_update.NguoiYeuCau = users.user_id 
                                                  WHERE animals_update.TrangThai = 'Đã duyệt' 
                                                  ORDER BY NgayCapNhat DESC");
                    if(mysqli_num_rows($sql3) == 0){
                        echo "
                        <tr>
                            <td>Không có</td>
                            <td>Không có</td>
                            <td>Không có yêu cầu nào cả.</td>
                            <td>Không có</td>
                          </tr>";
                    }
                    else{ 
                            while($row = mysqli_fetch_assoc($sql3)){ 
                              echo "<tr>                      
                                <td class='status'>".date_format(new DateTime($row['NgayCapNhat']), ' H:i d-m-Y')."</td>
                                <td class='status'>".$row['fullname']."</td>
                                <td>Yêu cầu cập nhật ".$row['TenKhoaHoc']."</td>
                                <td><a href='admin_update.php?update=".$row['TenKhoaHoc']."'>Xem chi tiết</a></td>
                              </tr>";
                            }
                          }
                          echo "
                          <table>
                          <h3>Danh sách từ chối</h3>
                          <tr>
                            <th>Ngày gửi</th>
                            <th>Người gửi</th>
                            <th>Yêu cầu</th>
                            <th>Chức năng</th>
                          </tr>";
                          $sql3 = mysqli_query($conn, "SELECT * FROM animals_update INNER JOIN users 
                                                        ON animals_update.NguoiYeuCau = users.user_id 
                                                        WHERE animals_update.TrangThai = 'Từ chối' 
                                                        ORDER BY NgayCapNhat DESC");
                          if(mysqli_num_rows($sql3) == 0){
                              echo "
                              <tr>
                                  <td>Không có</td>
                                  <td>Không có</td>
                                  <td>Không có yêu cầu nào cả.</td>
                                  <td>Không có</td>
                                </tr>";
                          }
                          else{ 
                                  while($row = mysqli_fetch_assoc($sql3)){ 
                                    echo "<tr>                      
                                      <td class='status'>".date_format(new DateTime($row['NgayCapNhat']), ' H:i d-m-Y')."</td>
                                      <td class='status'>".$row['fullname']."</td>
                                      <td>Yêu cầu cập nhật ".$row['TenKhoaHoc']."</td>
                                      <td><a href='admin_update.php?update=".$row['TenKhoaHoc']."'>Xem chi tiết</a></td>
                                    </tr>";
                                  }
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
