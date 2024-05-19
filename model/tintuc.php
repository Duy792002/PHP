<?php 

 function loadall_tintuc(){
     $sql = " SELECT * FROM tintuc ORDER BY id desc";
     $list_tt = pdo_query($sql);
     return $list_tt;
 }
 
 function insert_tintuc($tieu_de, $noi_dung, $file_name, $id){
     $sql = "INSERT INTO tintuc(tieu_de,noi_dung,hinh_anh,id) VALUES('$tieu_de', '$noi_dung', '$file_name', '$id')";
     pdo_execute($sql);
 }

 function delete_tintuc($id){
     $sql = "DELETE FROM tintuc WHERE id=".$id;
    pdo_execute($sql);
 }
?>