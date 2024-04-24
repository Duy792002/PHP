<?php

if (isset($_GET['id']) && isset($_GET['soluong'])) {
    $productId = $_GET['id'];
    $quantity = $_GET['soluong'];

    if (isset($_SESSION['mycart'][$productId])) {
        $_SESSION['mycart'][$productId]['soluong'] = $quantity;
    }
    var_dump($quantity);
}
?>
