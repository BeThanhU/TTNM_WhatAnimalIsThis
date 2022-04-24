<!DOCTYPE html>
<html >
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="css/style.css">

</head>
<body onload="timkiem(input.value, Lop.value, Bo.value, Ho.value)">
    <?php include 'header.php'; ?>
    <div class="content">
        <h3>TÌM KIẾM NÂNG CAO</h3>
        <div class="content-search">
            <div class="content-search-bar">
                <?php 
                    if (isset($_GET['input']))
                        $input = $_GET['input'];
                    else
                        $input = "";
                      ?>
                <input id="input" type="text" placeholder="Nhập tên động vật.."  value="<?php echo $input ?>">
                </a>
            </div>
            <div class="content-search-select">
                <?php include 'selected.php'; ?>
            </div>
            <div class="content-search-submit">
                <button onclick="timkiem(input.value, Lop.value, Bo.value, Ho.value)" type="submit">Tìm kiếm</button>
            </div>
        </div>
        <div class="search-result">
            <h3>KẾT QUẢ TÌM KIẾM</h3>
            <div id="ketquatk">           
            </div>
        </div>
    </div>
    
    <?php include 'footer.php'; ?>
   
<script src="js/script.js"></script>

</body>
</html>
