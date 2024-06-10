<div class="row mb">
    <div class="boxtrai mr">
        <div class="row mb frmdsloai">

        <center><h1 class="dn">GIỎ HÀNG</h1></center>
            <div class=" boxcontent cart">
                <table  id="cartTable">

                    <?php
                        viewcart(1);
                    ?>
                    <!-- <tr>
                        <td>1</td>
                        <td><img src="images/iphoneX.jpg" alt="" height="80px"></td>
                        <td>dien thaoi</td>
                        <td>50</td>
                        <td>2</td>
                        <td> 100 VND</td>
                        <td><input type="button" value=" xóa"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><img src="images/iphoneX.jpg" alt="" height="80px"></td>
                        <td>iphopne</td>
                        <td>120</td>
                        <td>3</td>
                        <td> 360 VND</td>
                        <td><input type="button" value=" xóa"></td>
                    </tr> -->
                </table>
            </div>
        </div>
        <div class="row mb bill">
            <a href="index.php?act=bill"><input class = "ctn-set type="button" value=" TIẾP TỤC ĐẶT HÀNG"></a>
            <a href="index.php?act=delcart"><input class = "ctn-del-all" type="button" value="XOÁ TẤT CẢ SẢN PHẨM TRÊN GIỎ HÀNG"></a>
            <a href="index.php?act=sanpham"><input class = "continue" type="button" value="TIẾP TỤC MUA SẮM"></a>
        </div>
    </div>
</div>
<style>
    .ctn-set {
        background-color: #e44d26;
        text-align: center;
        color: #fff;
        border: 1px solid transparent;
        outline: none;
        transition: 0.2s ease;
    }
    .ctn-set:hover {
        background-color: transparent;
        border-color: #e44d26;
        color: #e44d26;
        cursor: pointer;
    }
    .ctn-del-all {
        background-color: red;
        text-align: center;
        color: #fff;
        border: 1px solid transparent;
        outline: none;
        transition: 0.2s ease;
    }
    .ctn-del-all:hover {
        background-color: transparent;
        border-color: red;
        color: red;
        cursor: pointer;
    }
    .continue {
        background-color: blue;
        text-align: center;
        color: #fff;
        border: 1px solid transparent;
        outline: none;
        transition: 0.2s ease;
    }
    .continue:hover {
        background-color: transparent;
        border-color: blue;
        color: blue;
        cursor: pointer;
    }
</style>