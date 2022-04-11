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
        <section class="form signup">
        <header>Đăng ký tài khoản</header>
        <form action="php/signup.php" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="error-text"></div>
            <div class="field input">
                <label>Tên hiển thị:</label>
                <input type="text" name="fullname" placeholder="Nhập tên hiển thị." required>
            </div>
            <div class="field input">
            <label>Tên đăng nhập:</label>
            <input type="text" name="username" placeholder="Nhập tên đăng nhập." required>
            </div>
            <div class="field input">
            <label>Mật khẩu</label>
            <input type="password" name="password" placeholder="Nhập mật khẩu." required>
            <i class="fas fa-eye"></i>
            </div>
            <div class="field input">
            <label>Nhập lại mật khẩu</label>
            <input type="password" name="confirm_password" placeholder="Nhập lại mật khẩu." required>
            <i class="fas fa-eye"></i>
            </div>
            <div class="field image">
            <label>Nhập ảnh đại diện</label>
            <input type="file" name="image" accept="image/x-png,image/gif,image/jpeg,image/jpg" required>
            </div>
            <div class="field button">
            <input type="submit" name="submit" value="Đăng ký">
            </div>
        </form>
        <div class="link">Đã có tài khoản? <a href="login_page.php">Đăng nhập ngay.</a></div>
        </section>
    </div>
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
<script src="js/signup.js"></script>
<script src="js/pass-show-hide.js"></script>

</body>
</html>
