<?php

function insert_binhluan($noidung, $iduser, $idpro, $ngaybinhluan){
    $sql = "insert into binhluan(noidung, iduser, idpro, ngaybinhluan) values('$noidung', '$iduser', '$idpro', '$ngaybinhluan')";
    pdo_execute($sql);
}
function delete_binhluan($id){
    $sql = "delete from binhluan where id=". $id;
    pdo_query($sql);
}
function loadall_binhluan($idpro){
    $sql = "select * from binhluan where 1";
    if ($idpro>0) $sql.= " AND idpro='".$idpro."'";
        $sql.= " order by id desc";
    $listbl = pdo_query($sql);
    return $listbl;    
}
?>