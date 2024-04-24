<div class="row">
            <div class="row formtitle">
                <h1>THÊM MỚI TIN TỨC</h1>
            </div>

            <div>
                <ul>
                    <?php if(isset($_SESSION['error'])){
                        foreach($_SESSION['error'] as $er){
                            ?>
                            <li style="..."><?php echo $er; ?></li>
                            <?php
                        }
                    }?>
                </ul>
            </div>
            <div class="row formcontent">
                <form action="index.php?act=addtintuc" method="post" enctype="multipart/form-data">
                    <div class="row margin10">
                        Danh mục <br>
                        <select name="id_danhmuc" id="">
                            <?php 
                            foreach($listdmtintuc as $danhmuc){
                                extract($danhmuc);
                                echo "<option value= $id_danhmuc>$ten_danhmuc</option>";
                            }
                            ?>
                            
                        </select>
                    </div>
                    <div class="row margin10">
                        Tên tin tức <br>
                        <input type="text" name="tieu_de">
                    </div>
                    <div class="row margin10">
                        Nội dung <br>
                        <input type="text" name="noi_dung">
                    </div>
                    <div class="row margin10">
                        Hình ảnh <br>
                        <input type="file" name="hinh_anh">
                    </div>
                    
                    <div class="row margin10">
                        <input type="submit" name="themmoi" value="THÊM MỚI">
                        <input type="reset" value="NHẬP LẠI">
                        <a href="index.php?act=listtintuc"><input type="button" value="Danh sách"></a>
                    </div>
                    <?php
                        if(isset($thongbao)&&($thongbao!="")) echo $thongbao;
                    ?>
                </form>
            </div>
        </div>
    </div>