<div class="row">
            <div class="row formtitle margin10">
                <h1>THỐNG KÊ SẢN PHẨM THEO LOẠI</h1>
            </div>
            <div class="row formcontent">
                <div class="row margin10 formdsloai">
                    
                    <table>
                        <tr>
                            <th>MÃ DANH MỤC</th>
                            <th>TÊN DANH MỤC</th>
                            <th>SỐ LƯỢNG</th>
                            <th>GIÁ THẤP NHẤT</th>
                            <th>GIÁ CAO NHẤT</th>
                            <th>GIÁ TRUNG BÌNH</th>
                        </tr>

                        <?php
                            foreach($dsthongke as $thongke){
                                extract($thongke);
                        
                                echo '
                                    <tr>
                                        <td>'.$id.'</td>
                                        <td>'.$name.'</td>
                                        <td>'.$soluong.'</td>
                                        <td>'.$gia_min.'</td>
                                        <td>'.$gia_max.'</td>
                                        <td>'.$gia_avg.'</td>
                                    </tr>';
                            }
                        ?>
                    </table>
                </div>
                <div class="row margin10">
                    <a href="index.php?act=bieudo"><input type="button" value="Xem biểu đồ"></a>
                </div>
            </div>