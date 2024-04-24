<?php
function insert_sanpham($tensp,$giasp,$hinh,$mota,$iddm){
    $sql = "INSERT INTO sanpham(name,price,img,mota,iddm) VALUES ('$tensp','$giasp','$hinh','$mota','$iddm')";
    pdo_execute($sql);
}
function delete_sanpham($id){
    $sql = "DELETE FROM sanpham WHERE id=".$id;
    pdo_execute($sql);
}
function loadall_sanpham_top10(){
    $sql = "SELECT * FROM sanpham WHERE 1 order by luotxem desc limit 0,10";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}
function loadall_sanpham_home(){
    $sql = "SELECT * FROM sanpham WHERE 1 order by id desc limit 0,9";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}
function loadall_sanpham($kyw="",$iddm=0){
    $sql = "SELECT * FROM sanpham WHERE 1";
    if($kyw!=""){
        $sql.=" and name like'%".$kyw."%' ";
    }
    if($iddm>0){
        $sql.=" and iddm ='".$iddm."' ";
    }
    $sql.=" ORDER BY id desc";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}
function load_ten_dm($iddm){
    if($iddm > 0){
        $sql = "SELECT *FROM danhmuc where id=".$iddm;
        $dm = pdo_query_one($sql);
        extract($dm);
        return $name;
    }else{
        return "";
    }
    
}
function loadone_sanpham($id){
    $sql = "SELECT *FROM sanpham where id=".$id;
    $sp = pdo_query_one($sql);
    return $sp;
}
function load_sanpham_cungloai($id,$iddm){
    $sql = "SELECT *FROM sanpham where iddm = ".$iddm." AND id<>".$id;
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}
function update_sanpham($id,$iddm,$tensp,$giasp,$mota,$hinh){
    if($hinh!="")
        $sql = "UPDATE sanpham SET iddm='".$iddm."', name='".$tensp."', price='".$giasp."', mota='".$mota."', img='".$hinh."' WHERE id = ".$id;
    else
        $sql = "UPDATE sanpham SET iddm='".$iddm."', name='".$tensp."', price='".$giasp."', mota='".$mota."' WHERE id = ".$id;

    pdo_execute($sql);
}
?>