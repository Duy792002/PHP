<?php
function insert_taikhoan($email,$user,$pass){
    $sql = "INSERT INTO taikhoan(email,user,pass) VALUES ('$email','$user','$pass')";
    pdo_execute($sql);
}
function checkuser($user,$pass){
    $sql = "SELECT * FROM taikhoan where user = '".$user."' AND pass = '".$pass."'";
    $sp = pdo_query_one($sql);
    return $sp;
}
function checkemail($email){
    $sql = "SELECT * FROM taikhoan where email = '".$email."' ";
    $sp = pdo_query_one($sql);
    return $sp;
}
function capnhat_taikhoan($id,$user,$pass,$email,$address,$tel){
        $sql = "UPDATE taikhoan SET user='".$user."', pass='".$pass."', email='".$email."', address='".$address."' , tel='".$tel."' WHERE id = ".$id;

    pdo_execute($sql);
}
function loadall_taikhoan(){
    $sql = "SELECT * FROM taikhoan ORDER BY id desc";
    $listtaikhoan = pdo_query($sql);
    return $listtaikhoan;
}
function delete_taikhoan($id){
    $sql = "DELETE FROM taikhoan WHERE id=".$id;
    pdo_execute($sql);
}

?>