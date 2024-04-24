<?php 
// lấy d
function loadall_sach(){
    $sql = " SELECT tt.*, dm.ten_nhaxuatban FROM sach AS tt
    INNER JOIN nhaxuatban AS dm ON dm.id_nhaxuatban = tt.id_nhaxuatban";
    $list_sach = pdo_query($sql);
    return $list_sach;
}

function insert_sach($ten_sach, $gia, $file_name, $mo_ta){
    $sql = "INSERT INTO tintuc(ten_sach, hinh_anh, gia, mo_ta)
    VALUES('$ten_sach', '$gia', '$file_name', '$mo_ta')";
    pdo_execute($sql);
}


function delete_sach($id){
    $sql = "DELETE FROM sach WHERE id=".$id;
    pdo_execute($sql);
}
?>