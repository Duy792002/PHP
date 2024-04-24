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
                <div class="row mb">
                <center><h3 class="dn">PHƯƠNG THỨC THANH TOÁN</h3></center>
                    <div class="boxcontent">
                        <table>
                            <tr>
                                <td><input type="radio" value="1" name="pttt" checked><center>Trả tiền khi nhận hàng</center></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row mb frmdsloai">  
                    <div class=" mb">
                        <center><h3 class="dn">ĐƠN HÀNG</h3></center>
                        <div class=" boxcontent cart">
                            <table>

                                <?php viewcart(0);?>
                                </table>
                        </div>
                    </div>
                </div>
                <div class="row mb bill">
                    <center><input type="submit" value="ĐỒNG Ý ĐẶT HÀNG" name="dongydathang"></a></center>
                </div>
        </form>
    </div>

</div>
</div>