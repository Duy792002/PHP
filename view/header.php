
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>D STORE | Shop Laptop</title>
    <link rel="stylesheet" href="view/css/index.css">
    <link rel="stylesheet" href="view/css/css.css">
    <link rel="stylesheet" href="view/css/style2.css">
    <link rel="stylesheet" href="view/css/dangnhap.css">
    <link rel="stylesheet" href="view/css/giohang.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="view/css/menu.css">
    <link rel="stylesheet" href="view/css/tintuc.css">
    
    <script>
    function updateTotal(price, quantityInput) {
    var quantity = quantityInput.value;
    var total = price * quantity;

    // Tìm phần tử td chứa tổng thành tiền và cập nhật giá trị
    var totalElement = document.getElementById('total_' + quantityInput.id.split('_')[1]);
    if (totalElement) {
        totalElement.textContent = total + ' USD';

        // Gọi hàm để cập nhật tổng tiền
        updateGrandTotal();

        // Gửi yêu cầu AJAX để cập nhật session
        updateSession(quantityInput.id.split('_')[1], quantity);
    } else {
        console.error('Total element not found.');
    }
}

function updateGrandTotal() {
    var grandTotal = 0;

    // Lặp qua các hàng trong bảng
    var table = document.getElementById('cartTable');
    var rows = table.getElementsByTagName('tr');
    for (var i = 1; i < rows.length - 1; i++) { // Bắt đầu từ 1 để tránh hàng tiêu đề và kết thúc trước hàng tổng đơn hàng
        var totalElement = rows[i].getElementsByTagName('td')[4]; // Cột chứa tổng thành tiền
        if (totalElement) {
            var total = parseFloat(totalElement.textContent.replace(' USD', ''));

            grandTotal += total;
        } else {
            console.error('Total element not found in row ' + i);
        }
    }

    // Cập nhật tổng đơn hàng
    var grandTotalElement = document.getElementById('grandTotal');
    if (grandTotalElement) {
        grandTotalElement.textContent = grandTotal + ' USD';
    } else {
        console.error('Grand total element not found.');
    }
}
function updateSession(productId, quantity) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
            if (this.status == 200) {
                // Xử lý kết quả nếu cần
                console.log('Session updated successfully.');
            } else {
                
            }
        }
    };

    // Tạo URL chứa tham số id và quantity
    var url = 'update_session.php?id=' + productId + '&soluong=' + quantity;

    xhttp.open("GET", "/Đường_Dẫn_Absolute/update_session.php?id=" + productId + "&soluong=" + quantity, true);
    xhttp.send();

}

document.addEventListener('DOMContentLoaded', function() {
    const menuItems = document.querySelectorAll('.dropdownbtn');

    menuItems.forEach(item => {
        item.addEventListener('click', () => {
        menuItems.forEach(i => i.classList.remove('active'));
        item.classList.add('active');
        });
    });
});

</script>


</head>
<body>
    <div class="container">
            <header>
                <section class="logo" href="index.php">
                    <a href = "index.php" style = "text-docoration: none;">
                        <img src="view/images/logo.png" alt="" height="60px">
                    </a>
                </section>
                <div class="menu">
                <ul>
                    <li class="dropdown">
                      <a class="dropdownbtn" href="index.php" >Trang chủ</a>
                    <li class="dropdown">
                      <a class="dropdownbtn" href="#">Danh mục</a>
                      <div class="dropdown_content">
                         
                        <?php foreach($dsdm as $dm): ?>
                            <a href="?act=sanpham&iddm=<?= $dm['id']?>"><?= $dm['name']?></a>
                        <?php endforeach ?>
                         
                      </div>
                    <li class="dropdown">
                        <a class="dropdownbtn" href="index.php?act=sanpham">Sản Phẩm</a>
                    <li class="dropdown">
                        <a class="dropdownbtn" href="index.php?act=gioithieu">Giới thiệu</a>
                    <li class="dropdown">
                        <a class="dropdownbtn" href="index.php?act=tintuc">Tin Tức</a>
                    <li class="dropdown">
                        <a class="dropdownbtn" href="index.php?act=lienhe">Liên Hệ</a>
                    
                </ul>
                <section class="timKiem">
                        <form action="index.php?act=sanpham" method="post" class="form">
                            <input type="text" name="kyw" required class="input" placeholder="Nhập từ khóa">
                            <input type="submit" name="timkiem" class="search" value="Tìm kiếm">
                        </form>
                        <a href="index.php?act=addtocart" class="icon" id="cart"><i class='bx bx-cart'></i></a>
                        <a href="#" class="icon" id="cart"><i class='bx bx-'></i></a>
                        <div class="iconadmin"><a href="index.php?act=dangnhap" ><svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;">
                        <path d="M12 2C6.579 2 2 6.579 2 12s4.579 10 10 10 10-4.579 10-10S17.421 2 12 2zm0 5c1.727 0 3 1.272 3 3s-1.273 3-3 3c-1.726 0-3-1.272-3
                        -3s1.274-3 3-3zm-5.106 9.772c.897-1.32 2.393-2.2 4.106-2.2h2c1.714 0 3.209.88 4.106 2.2C15.828 18.14 14.015 19 12 19s-3.828-.86-5.106-2.228z"></path></svg></a></div>
                </section>
            </div>
        </header>

        
            