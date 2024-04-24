

<div class="body">
    <div>
    <center><h1 class="dn">ĐĂNG KÝ TÀI KHOẢN</h1></center>
            <form action="index.php?act=dangky" method="post">
                
                <div class=" margin10">
                    Email:  
                <input type="email" name="email" required>
                </div>

                <div class=" margin10">
                    Tên đăng nhập
                <input type="text" name="user" id="" required>
                </div>

                <div class=" margin10">
                    Mật khẩu
                <input type="password" name="pass" required>
                </div>
                <div class="margin10">
                    <div class="dkcn">
                        <input class="checkbox" type="checkbox" required>Tôi đồng ý với các điều khoản bảo mật cá nhân
                    </div>
                </div>

                <div class=" margin10">
                    <center>
                        <button type="submit" value="Đăng ký" name="dangky">Đăng ký</button>
                        <button type="reset" value="Nhập lại">Nhập lại</button>
                    </center>
                </div>
                <center><div class="qmk1">Bạn đã có tài khoản: <a href="index.php?act=dangnhap">Đăng nhập ngay</a></div></center>

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
