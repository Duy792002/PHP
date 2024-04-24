<div class="body">
        <div>
        <center><h1 class="dn">CẬP NHẬT TÀI KHOẢN</h1></center>
            <?php
            if(isset($_SESSION['user'])&&(is_array($_SESSION['user']))){
                extract($_SESSION['user']);
            }
            ?>
            <form action="index.php?act=edit_taikhoan" method="post">
                
                <div class=" margin10">
                <label for="email">Email:</label>
                <input type="email" name="email" value="<?=$email?>">
                </div>

                <div class=" margin10">
                <label for="user">Tên đăng nhập:</label>
                <input type="text" name="user" value="<?=$user?>">
                </div>

                <div class=" margin10">
                <label for="password">Mật khẩu:</label>
                <input type="password" name="pass" value="<?=$pass?>">
                </div>

                <div class=" margin10">
                <label for="address">Address</label>
                <input type="text" name="address" value="<?=$address?>">
                </div>

                <div class=" margin10">
                <label for="tel">Số điện thoại:</label>
                <input type="text" name="tel" value="<?=$tel?>">
                </div>

                <div class="margin10">
                    <input type="hidden" name="id" value="<?=$id?>">
                    <center><button type="submit" value="Cập nhật" name="capnhat">Cập nhật</button></center>
                </div>
            </form>  
            <h2 class="thongbao">
            <?php
                if(isset($thongbao)&&($thongbao != "")){
                    echo $thongbao;
                }
            ?>
            </h2>
    </div>
</div>