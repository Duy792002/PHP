<div class="row">
    <div class="row formtitle">
        <h1>DANH SÁCH BÌNH LUẬN</h1>
    </div>
    <div class="row formcontent ">
        <form action="#" method="POST">
            <div class="row margin10 formdsloai">
                <table>
                    <tr>
                        <th></th>
                        <th>ID</th>
                        <th>ND BÌNH LUẬN</th>
                        <th>IDUSER</th>
                        <th>IDPRO</th>
                        <th>NGÀY BÌNH LUẬN</th>
                        <th></th>
                    </tr>
                    <?php
                    foreach ($listbinhluan as $binhluan) {
                        extract($binhluan);
                        $xoabl = "index.php?act=xoabl&id=" . $id;
                        echo '<tr>
                                <td><input type="checkbox" name="" id=""></td>
                                <td>' . $id . '</td>
                                <td>' . $noidung . '</td>
                                <td>' . $iduser . '</td>
                                <td>' . $idpro . '</td>
                                <td>' . $ngaybinhluan . '</td>
                                <td>
                                    <a href="' . $xoabl . '"> <input type="button" value="Xóa"> </a> 
                                </td>
                            </tr>';
                    }
                    ?>
                </table>
            </div>
            <div class="row margin10 ">
                <input class="" type="button" value="CHỌN TẤT CẢ">
                <input class="" type="button" value="BỎ CHỌN TẤT CẢ">
            </div>
        </form>
    </div>
</div>