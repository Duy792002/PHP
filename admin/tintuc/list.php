<div class="row">
            <div class="row formtitle margin10">
                <h1>DANH SÁCH TIN TỨC</h1>
            </div>
            
            <div class="row formcontent">
                <div class="row margin10 formdsloai">
                    <form action="" method="post">
                    <table>
                        <tr>
                            <th></th>
                            <th>TIÊU ĐỀ</th>
                            <th>NỘI DUNG</th>
                            <th>HÌNH ẢNH</th>
                            <th>DANH MỤC</th>
                            
                            <th></th>
                        </tr>

                        <?php
                            foreach($listtintuc as $tintuc){
                                extract($tintuc);
                                $suatt = "index.php?act=suatt&id=".$id;
                                $xoatt = "index.php?act=xoatt&id=".$id;
                                $thongbaoxoa = "'"."Bạn có chắc chắn muốn xóa tin tức:".$tieu_de."'";

                                $hinhpath = "../upload/".$hinh_anh;
                                if(is_file($hinhpath)){
                                    $hinh = "<img src ='".$hinhpath."' height='80'>";
                                }
                                else{
                                    $hinh = "Không có hình";
                                }
                                echo '
                                    <tr>
                                        <td><input type="checkbox"></td>
                                        <td>'.$tieu_de.'</td>
                                        <td>'.$noi_dung.'</td>
                                        <td>'.$hinh_anh.'</td>
                                        <td>'.$ten_danhmuc.'</td>
                                        
                                        <td>
                                            <center>
                                                <a href="'.$suatt.'"><input type="button" value="Sửa"></a>
                                                <a href="'.$xoatt.'" onclick= "return confirm('.$thongbaoxoa.')" role="button">
                                                <input type="button" value="Xóa">
                                                </a>
                                            </center>
                                        </td>
                                    </tr>';
                            }
                        ?>
                    </table>
                    </form>
                </div>
                <div class="row margin10">
                    <input type="button" value="Chọn tất cả">
                    <input type="button" value="Bỏ chọn tất cả">
                    <input type="button" value="Xóa các mục đã chọn">
                    <a href="index.php?act=addtintuc"><input type="button" value="Nhập thêm"></a>
                </div>
            </div>