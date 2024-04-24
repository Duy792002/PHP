
<div class="row">
        <div class="product">
            <?php
            $i=0;
            foreach ($dssp as $sp) {               
                extract($sp);
                $hinh = $img_path.$img;
                $linksp = "index.php?act=sanphamct&idsp=".$id;
                if(($i==2)||($i==5)||($i==8)||($i==11)){
                    $mr= "";
                }else{
                    $mr ="margin_right";
                }
                echo '<div class="sanpham '.$mr.' ">
                    <div class="product-details">
                        <div class=" img"> <a href="'.$linksp.'"><img width="270px" height="270px" src="'.$hinh.'" alt=""></a></div>
                        <center><div class="tensp">
                            <a href="'.$linksp.'">'.$name.'</a>
                        </div></center>
                        <center>
                        <center><div class="gia">Giá: '.$price.' USD</div></center>  
                        
                        <center><a href="'.$linksp.'" class="btn-buy">Mua Ngay</a></center>
                        </div>
                    </div>';
                $i+=1;
                }
            ?>           
        </div>
    </div>