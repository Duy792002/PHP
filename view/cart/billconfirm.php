<div class="row">
    <div class="row mb">
        <div class="boxtrai mr">
            <div class=" mb">
                
                <div class=" boxcontent" style="text-align:center">
                    <h2> Cảm ơn quý khách đã đặt hàng!</h2>
                </div>
            </div>
            <?php
                if(isset($bill)&&(is_array($bill))){
                    extract($bill);
                }
            ?>
            <div class="row mb">
                <div class="boxtitle">Thông Tin Đơn Hàng</div>
                <div class="row1 boxcontent" style="text-align:center">
                    <li>MÃ Đơn Hàng: DA1-<?=$bill['id'];?></li>
                    <li>Ngay Đặt Hàng: <?=$bill['ngaydathang'];?></li>
                    <li>Tổng Số Tiền Đơn hàng: <?=$bill['total'];?> USD</li>
                    <li>Phương Thức Thanh Toán: <?=$bill['bill_pttt'];?></li>
                </div>
            </div>
            <div class=" mb" style="display: flex; width: 100%; flex-direction: column;">
                <div class="boxtitle">THÔNG TIN ĐẶT HÀNG</div>
                <div class=" row boxcontent billform">

                    <table>

                        <tr>

                            <td> Người đặt hàng</td>
                            <td><?=$bill['bill_name'];?></td>
                        </tr>

                        <tr>

                            <td> Địa chỉ</td>
                            <td><?=$bill['bill_address'];?></td>
                        </tr>

                        <tr>

                            <td> Email</td>
                            <td><?=$bill['bill_email'];?></td>
                        </tr>

                        <tr>

                            <td> Điện thoại</td>
                            <td><?=$bill['bill_tel'];?></td>
                        </tr>
                    </table>

                </div>
            </div>



                <div class=" mb" style="    display: flex; width: 100%; flex-direction: column;">
                    <div class="boxtitle">CHI TIẾT GIỎ HÀNG</div>
                        <div class=" boxcontent cart frmdsloai">

                            <table>
                                <tr>

                                    <th>HÌNH</th>
                                    <th>SẢN PHẨM</th>
                                    <th>ĐƠN GIÁ</th>
                                    <th>SỐ LƯỢNG</th>
                                    <th>THÀNH TIỀN</th>

                                </tr>
                                <?php
                                    bill_chi_tiet($billct);
                                ?>

                            </table>
                        </div>
                    </div>
                    <a href="index.php"><input type="button" class="btn-buy2" value="Trở về trang chủ"></a>
                </div>
            <div>
        </div>
    </div>
</div>