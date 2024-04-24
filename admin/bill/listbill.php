<div class="row">
            <div class="row formtitle">
                <h1>DANH SÁCH ĐƠN HÀNG</h1>
            </div>
            <div class="row formcontent">
                <div class="row margin10 formdsloai">
                    <table>
                        <tr>
                            <th></th>
                            <th>MÃ ĐƠN HÀNG</th>
                            <th>KHÁCH HÀNG</th>
                            <th>SỐ LƯỢNG HÀNG</th>
                            <th>GIÁ TRỊ ĐƠN HÀNG</th>
                            <th>NGÀY ĐẶT HÀNG</th>
                            <th>TÌNH TRẠNG ĐƠN HÀNG</th>
                            <th>TÌNH TRẠNG THANH TOÁN</th>
                            <th>THAO TÁC</th>
                        </tr>

                        <?php
                            foreach($listbill as $bill){
                                extract($bill);
                                $suadh = "index.php?act=suadh&id=".$id;
                               
                                $kh = $bill['bill_name'].'
                                <br> '.$bill['bill_email'].'
                                <br> '.$bill['bill_address'].'
                                <br> '.$bill['bill_tel'];
                                $ttdh =  get_ttdh($bill['bill_status']);
                                $tttt = get_tttt($bill['bill_thanhtoan']);
                                $countsp =  loadall_cart_count($bill["id"]);
                                echo '
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>DA1- '.$bill['id'].'</td>
                                        <td>'.$kh.'</td>
                                        <td>'.$countsp.'</td>
                                        <td>'.$bill['total'].' USD</td>
                                        <td>'.$bill['ngaydathang'].'</td>
                                        <td>'.$ttdh.'</td>
                                        <td>'.$tttt.'</td>
                                        <td><center><a href="'.$suadh.'"><input type="button" value="Sửa"></a></center></td>
                                    </tr>';
                            }
                        ?>
                    </table>
                </div>
            </div>