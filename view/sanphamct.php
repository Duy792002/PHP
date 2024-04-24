    <div class="row">
        <div class="product">
                <?php
                $img = $img_path.$img;
                echo '<div><img height="500px" width="500px" src ="'.$img.'"></div>
                <div class="product-details-1">

                    <h2 class="namechitiet">'.$name.'</h2>
                    <p class="ttsp">Thông tin sản phẩm: <br>'.$mota.'</p>
                    <div class="product-price gia">Giá: '.$price.' USD</div>';

                ?>
                
                    <form action="index.php?act=addtocart" method="post">

                    <?php
                    if (isset($_SESSION['user'])) {
                        echo '
                            <form action="'.$_SERVER['PHP_SELF'].'" method="POST">
                            <input type="hidden" name="id" value="'.$id.'">
                            <input type="hidden" name="name" value="'.$name.'">
                            <input type="hidden" name="img" value="'.$img.'">
                            <input type="hidden" name="price" value="'.$price.'"> 
                            
                            
                            <div class="muangay">
                            <input type="submit" class="btn-buy2" name="addtocart" value="Thêm vào giỏ hàng">
                                
                            </div>
                            </form>
                        ';
                    }else{
                        echo '<h1>Bạn cần đăng nhập để thêm giỏ hàng!</h1>';
                    }
                    ?>
                    </form>
                    
                </div>
            </div>
        <div class="comment-section">
            <h3>Đánh giá sản phẩm</h3>
            <div class="comment">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(function() {
                        $("#binhluan").load("view/binhluan/binhluanform.php", {idpro: <?= $id ?>});
                    });
                </script>
            <div class="comment" id="binhluan">
                <div class="body ">
                    <iframe src="view/binhluan/binhluanform.php?idpro=<?= $id ?>" frameborder="0" width="100%" height="300px"></iframe>
                </div>
                <div class="comment">
                    <form action="" method="POST">
                        <input type="hidden" name="idpro" value="">
                        <input type="text" name="noidung">
                        <input type="submit" name="guibinhluan" value="Gửi bình luận">
                    </form>
                </div>
            </div>
        </div>

        <div class="related-products">
            <h2>Sản Phẩm Cùng Loại</h2>
            
            <div class="related-product">
            
                <?php
                $i=0;
                foreach($sp_cung_loai as $sp_cung_loai){
                    extract($sp_cung_loai);
                    $img = $img_path.$img;
                    $linksp = "index.php?act=sanphamct&idsp=".$id;
                        if(($i==2)||($i==5)||($i==8)||($i==11)){
                            $mr= "";
                        }else{
                            $mr ="margin_right";
                        }
                    echo'<div class="related-product-details">
                    <a href="'.$linksp.'"><img src="'.$img.'" ></a>
                    <center><div class="linksp"><li><a href ="'.$linksp.'">'.$name.'</a><li></div></center>
                    <center><div class="related-product-price">Giá:'.$price.' USD</div></center>
                </div>';
                $i+=1;
                }
                ?>               
                </div>
            </div>
        </div>
    </div>
   

