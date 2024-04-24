<?php

// hàm lấy toàn bộ dữ liệu của bảng danh mục tin tức
 function loadall_nhaxuatban(){
    $sql = "SELECT * FROM nhaxuatban";
    $list_nxb = pdo_query($sql);
 }
?>