<div class="row mb">
    <div class="boxtrai mr">
        <form action="index.php?act=billcomfirm" method="post">
            <div class="row mb">
                
                <div class=" boxcontent cart">

                <center><h3 class="dn">THÔNG TIN ĐẶT HÀNG</h3></center>
                    <div class=" boxcontent billform">
                        <table>
                            <?php

                                if(isset($_SESSION['user'])){
                                    $name=$_SESSION['user']['user'];
                                    $address=$_SESSION['user']['address'];
                                    $email=$_SESSION['user']['email'];
                                    $tel=$_SESSION['user']['tel'];
                                }else{
                                    $name="";
                                    $address="";
                                    $email="";
                                    $tel="";
                                }
                            ?>
                            <tr>
                                <td>Người đặt hàng</td>
                                <td><input type="text" name="name" value="<?=$name?>"></td>
                            </tr>
                            <tr>
                                <td>Địa chỉ</td>
                                <td><input type="text" name="address" value="<?=$address?>"></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td><input type="text" name="email" value="<?=$email?>"></td>
                            </tr>
                            <tr>
                                <td>Điện thoại</td>
                                <td><input type="text" name="tel" value="<?=$tel?>"></td>
                            </tr>

                        </table>
                    </div>
                </div>

                <div class="row mb frmdsloai">  
                    <div class=" mb"
                        <center><h3 class="dn">ĐƠN HÀNG</h3></center>
                        <div class=" boxcontent cart">
                            <table>

                                <?php viewcart(0);?>
                                </table>
                        </div>
                    </div>
                </div>
        </form>
        <form>
        <center><h3 class="dn">PHƯƠNG THỨC THANH TOÁN</h3></center>
        <form class="" method="post" action="">
               <input class = "pay-on-delivery" type="submit" value="THANH TOÁN KHI NHẬN HÀNG" name="dongydathang">
        </form>

        <form class="" method="post" target="_blank" enctype="application/x-www-form-urlencoded"
                          action="index.php?act=thanhtoanmomo">
                <input class = "pay-with-momo" type="submit" name="momo" value="THANH TOÁN BẰNG MOMO QR CODE" >
        </form>

        <form class="" method="post" target="_blank" enctype="application/x-www-form-urlencoded"
                          action="view/cart/atmmomo.php">
                <input class = "pay-with-momoatm" type="submit" name="momo" value="THANH TOÁN ATM MOMO" >
        </form>
        </form>
        
    </div>

</div>
</div>
<style>
    .pay-on-delivery {
        background-color: #e44d26;
        text-align: center;
        color: #fff;
        border: 1px solid transparent;
        outline: none;
        transition: 0.2s ease;
    }
    .pay-on-delivery:hover {
        background-color: transparent;
        border-color: #e44d26;
        color: #e44d26;
        cursor: pointer;
    }
    .pay-with-momo {
        background-color: #D31987;
        text-align: center;
        color: #fff;
        border: 1px solid transparent;
        outline: none;
        transition: 0.2s ease;
    }
    .pay-with-momo:hover {
        background-color: transparent;
        border-color: #D31987;
        color: #D31987;
        cursor: pointer;
    }
    .pay-with-momoatm {
        background-color: #D31987;
        text-align: center;
        color: #fff;
        border: 1px solid transparent;
        outline: none;
        transition: 0.2s ease;
    }
    .pay-with-momoatm:hover {
        background-color: transparent;
        border-color: #D31987;
        color: #D31987;
        cursor: pointer;
    }
</style>