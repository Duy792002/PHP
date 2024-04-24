<div class="body">
        <div>
            <center><h1 class="dn">QUÊN MẬT KHẨU</h1></center>
            <form action="index.php?act=quenmk" method="post">
                
                <div class="label">
                    Vui lòng nhập Email:
                <input type="email" name="email" required>
                </div>

                <div class="">
                    <center>
                        <input class="btn-buy2" type="submit" value="Gửi" name="guiemail">
                        <input class="btn-buy2" type="reset" value="Nhập lại">
                    </center>
                
                    <h2 class="thongbao">
                        <?php
                            if(isset($thongbao)&&($thongbao != "")){
                                echo $thongbao;
                            }
                        ?>
                    </h2>
                </div>
            </form> 
        </div>
    </div> 
            
       