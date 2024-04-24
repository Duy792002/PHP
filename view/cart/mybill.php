<div class=" mb">
    <div class=" boxtrai mr">
        <div class="row mb frmdsloai">

        <center><h3 class="dn">ĐƠN HÀNG CỦA BẠN</h3></center>
            <div class=" boxcontent cart">
                <table>
                    <tr>
                        <th>MÃ ĐƠN HÀNG</th>
                        <th>NGÀY ĐẶT</th>
                        <th>SỐ LƯỢNG MẶT HÀNG</th>
                        <th>TỔNG GIÁ TRỊ ĐƠN HÀNG</th>
                        <th>TÌNH TRẠNG ĐƠN </th>
                        <th>TÌNH TRẠNG THANH TOÁN </th>
                    </tr>
                    <?php
                        if(is_array($listbill)){
                            foreach ($listbill as $bill) {
                                extract($bill);
                                $ttdh=get_ttdh($bill['bill_status']);
                                $tttt=get_tttt($bill['bill_thanhtoan']);
                                $countsp = loadall_cart_count($bill['id']);
                                echo'<tr>
                                        <th>DA1-'.$bill['id'].'</th>
                                        <th>'.$bill['ngaydathang'].'</th>
                                        <th>'.$countsp.'</th>
                                        <th>'.$bill['total'].' USD</th>
                                        <th>'.$ttdh.'</th>
                                        <th>'.$tttt.'</th>
                                    </tr>';
                            }
                        } 
                        
                    ?>

                </table>
            </div>
        </div>

    </div>
    
</div>