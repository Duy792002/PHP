<?php

// hàm lấy toàn bộ dữ liệu của bảng danh mục tin tức
 function loadall_dmtt(){
    $sql = "SELECT * FROM danhmuctintuc";
    $list_dm = pdo_query($sql);
 }
?>