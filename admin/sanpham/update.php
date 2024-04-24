


<div class="row">
            <div class="row formtitle">
                <h1>CẬP NHẬT LOẠI HÀNG HÓA</h1>
            </div>
            <div class="row formcontent">
            <form action="index.php?act=updatesp" method="post" enctype="multipart/form-data">
                    <div class="row margin10">
                        <select name="iddm" id="">
                            <option value="0" selected>Tất cả</option>
                            <?php 
                            foreach($listdanhmuc as $danhmuc){
                                
                                if($iddm==$danhmuc['id']) $s="selected"; else $s="";
                                echo '<option value="'.$danhmuc['id'].'" '.$s.'>'.$danhmuc['name'].'</option>';

                            }
                            ?>
                        </select>
                    </div>
                    <?php
                        if(is_array($sanpham)){
                            extract($sanpham);
                        }
                        $hinhpath = "../upload/".$img;
                            if(is_file($hinhpath)){
                                $hinh = "<img src ='".$hinhpath."' height='80'>";
                            }
                            else{
                                $hinh = "Không có hình";
                            }
                        ?>
                    <div class="row margin10">
                        Tên sản phẩm <br>
                        <input type="text" name="tensp" value="<?=$name ?>">
                    </div>
                    <div class="row margin10">
                        Giá <br>
                        <input type="text" name="giasp" value="<?=$price ?>">
                    </div>
                    <div class="row margin10">
                        Hình ảnh <br>
                        <input type="file" name="hinh">
                        <?=$hinh ?>
                    </div>
                    <div class="row margin10">
                        Mô tả <br>
                        <textarea name="mota" id="" cols="30" rows="10"><?=$mota ?></textarea>
                    </div>
                    <div class="row margin10">
                        <input type="hidden" name="id" value="<?=$id ?>">
                        <input type="submit" name="capnhat" value="CẬP NHẬT">
                        <input type="reset" value="NHẬP LẠI">
                        <a href="index.php?act=listsp"><input type="button" value="Danh sách"></a>
                    </div>
                    <?php
                        if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
        </div>
    </div>