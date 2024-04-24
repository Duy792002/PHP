<div class="body">
    <div >
        <?php
        if(isset($_SESSION['user'])){
            extract($_SESSION['user']);
            
        ?>
        <div class="trangquantri">
            <div class="dn">
                Xin chào  <?=$user?><br>
            </div>

            <div class="thongtinadmin">
                <div class="qmk"><a href="index.php?act=quenmk">Quên mật khẩu?</a><br></div>
                <div class="qmk"><a href="index.php?act=edit_taikhoan">Cập nhật thông tin tài khoản</a><br></div>
                <div class="qmk"><a href="index.php?act=mybill">Đơn hàng của tôi</a><br></div>
                <?php if($role==1){ ?>
                    <div class="qmk"><a href="admin/index.php">Trang quản trị</a><br></div>
                <?php } ?>
                <div class="qmk"><a href="index.php?act=thoat">Đăng xuất</a><br></div>
            </div>
        </div>  

        <?php


        }else{
        ?>
        <center><h1 class="dn">ĐĂNG NHẬP</h1></center>
        <form action="index.php?act=dangnhap" method="post">

            <label for="username">Tên người dùng:</label>
            <input type="text" name="user" required>

            <label for="password">Mật khẩu:</label>
            <input type="password" name="pass" required>

            <div class="qmk"><a href="index.php?act=quenmk">Quên mật khẩu?</a><br></div>

            <div><center><button type="submit" value="Đăng nhập" name="dangnhap" class="dangnhap">ĐĂNG NHẬP</button></center></div>
                
            <div class="qmk1">Bạn chưa có tài khoản: <a href="index.php?act=dangky">Đăng kí ngay</a></div>

        </form>
        
        <?php }?>
        <h2 class="thongbao">
        <?php
            if(isset($thongbao)&&($thongbao != "")){
                echo $thongbao;
            }
        ?>
        </h2>
    </div>
</div>


