<!DOCTYPE html>
<html">
<head>
<meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/collection.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php include 'header.php'; ?>
    <div class="content">
        <div class="content-collection">
            <h3>THƯ VIỆN TỔNG HỢP</h3> 
            <h3>A - Z</h3>
            <div id="collection">
            <?php include 'php/collection.php'; ?>
            </div>
        </div>
    </div>
    <?php include 'footer.php'; ?>
<script src="js/script.js"></script>
</body>
</html>
