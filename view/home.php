        <section class="banner" style="position: relative;">
            <img id="slider"src="view/images/1.jpg" alt="">
            <div onclick="back()" style="position: absolute;" class="back">
                <i class='bx bx-chevron-left'></i>
            </div>
            <div onclick="next()" style="position: absolute;" class="next">
                <i class='bx bx-chevron-right'></i>
            </div>
        </section>
        <section class="tieuDe">
            <h2>SẢN PHẨM MỚI</h2>
        </section>
        
        <section class="content">  
            <section class="sp">
                <?php
                $i=0;
                foreach ($spnew as $sp) {               
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
                            <div class=" img"> <a href="'.$linksp.'"><img width="230px" height="230px" src="'.$hinh.'" alt=""></a></div>
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
            </section>
        </section>
        <section class="tieuDe">
            <h2>SALE</h2>
        </section>
        <section class="coming_soon">
            <img src="view/images/1.avif" alt="">
        </section>
        <section class="tieuDe">
            <h2>TOP 10 YÊU THÍCH</h2>
        </section>
        <section class="content">  
            <section class="sp">
                    <?php
                            foreach($dstop10 as $sp){
                                extract($sp);
                                $linksp = "index.php?act=sanphamct&idsp=".$id;
                                $img = $img_path.$img;
                                echo '<section class="">
                                <div class="product-details2">
                                <a href="'.$linksp.'"><img height="230px" witdh="230px" src="'.$img.'" ></a>
                                <section class="thongTin">
                                <center><div class="tensp">
                                    <a href="'.$linksp.'">'.$name.'</a>
                                </div></center>
                                <center><div class="gia">Giá: '.$price.' USD</div></center> 
                                    <a href="'.$linksp.'" class="btn-buy">Mua Ngay</a>
                                    </section>
                                    </div>
                                </section>';
                            }
                        ?>
            </section>
        </section>
    
        
        