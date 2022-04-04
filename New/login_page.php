<!DOCTYPE html>
<html>
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'header.php'; ?>
        <div class="wrapper">
        <section class="form login">
        <header>Đăng nhập</header>
        <form action="php/login.php" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="error-text"></div>
            <div class="field input">
            <label>Tên đăng nhập</label>
            <input type="text" id="usename" name="username" placeholder="Nhập tên đăng nhập của bạn." required>
            </div>
            <div class="field input">
            <label>Mật khẩu</label>
            <input type="password" id="password" name="password" placeholder="Nhập mật khẩu của bạn." required>
            <i class="fas fa-eye"></i>
            </div>
            <div class="field button">
            <input type="submit" name="submit" value="Đăng nhập">
            </div>
        </form>
        <div class="link">Chưa có tài khoản? <a href="signup_page.php">Tạo ngay.</a></div>
        </section>
    </div>  
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
<script src="js/pass-show-hide.js"></script>

</body>
</html>
