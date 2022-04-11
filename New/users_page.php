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
                <p>Cập nhật CSDL</p>
            </div>
            <div class="logout">
                <a href="php/logout.php?logout_id=<?php echo $row['user_id']; ?>" class="logout">Đăng xuất</a>
            </div>
        </div>
    </div>  
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
</body>
</html>
