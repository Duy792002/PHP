


<div class="row">
    <div class="row formtitle">
        <h1>CẬP NHẬT ĐƠN HÀNG</h1>
    </div>
        <div class="row formcontent">
            <form action="index.php?act=updatedh&id=<?php echo $donhang['id'] ?>" method="post" enctype="multipart/form-data">
                <div class="row margin10">
                    
                    Mã đơn hàng <br>
                    <input type="hidden" name="id" value="<?=$donhang['id']?>">
                    <input type="text" readonly name="id" value="<?=$donhang['id']?>">
                    Khách hàng <br>
                    <input type="text" readonly name="id" value="<?=$donhang['bill_name']?>">
                          
                    Trạng thái đơn hàng <br>
                    <select name="bill_status">
                        <option value="0" <?=($donhang['bill_status'] == 0) ? 'selected' : ''  ?> >Đơn hàng mới</option>
                        <option value="1" <?=($donhang['bill_status'] == 1) ? 'selected' : ''  ?> >Đang chuẩn bị</option>
                        <option value="2" <?=($donhang['bill_status'] == 2) ? 'selected' : ''  ?> >Đang giao hàng</option>
                        <option value="3" <?=($donhang['bill_status'] == 3) ? 'selected' : ''  ?> >Giao hàng thành công</option>
                    </select>
                    
                    <br>Trạng thái thanh toán <br>
                    <select name="bill_thanhtoan">
                        <option value="0" <?=($donhang['bill_thanhtoan'] == 0) ? 'selected' : ''  ?> >Chưa thanh toán</option>
                        <option value="1" <?=($donhang['bill_thanhtoan'] == 1) ? 'selected' : ''  ?> >Đã thanh toán</option>
                    </select>
                    
                </div>
                <div class="row formcontent">
                <div class="row margin10 formdsloai">
                    
                    <table>
                        <tr>
                            <th>HÌNH ẢNH</th>
                            <th>TÊN SẢN PHẨM</th>
                            <th>ĐƠN GIÁ</th>
                            <th>SỐ LƯỢNG</th>
                            <th>THÀNH TIỀN</th>
                        </tr>
                        <?php
                        foreach($dt_bill as $bill):
                            $bill['thanhtien'] = $bill['price'] * $bill['soluong'];
                        ?>
                            <tr>
                                <td>
                                    <img width="80px" src="../<?php echo $bill['img'] ?>" alt="">
                                </td>
                                <td>
                                    <?php echo $bill['name'] ?>
                                </td>
                                <td>
                                    <?php echo $bill['price'] ?>
                                </td>
                                <td>
                                    <?php echo $bill['soluong'] ?>
                                </td>
                                <td>
                                    <?php echo $bill['thanhtien'] ?>
                                </td>
                            </tr>

                        <?php endforeach ?>
                    </table>
                </div>
                </div>
                    
                    <div class="row margin10">
                        <input type="hidden" name="id" value="<?=$donhang['id'] ?>">
                        <input type="submit" name="capnhat" value="CẬP NHẬT">
                    </div>
                    <?php
                        if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
        </div>
    </div>