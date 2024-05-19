<h2 class="tieudett">TIN TỨC</h2>
<?php
    foreach($tttintuc as $tintuc){
        extract($tintuc);
        $hinh =$img_path.$hinh_anh;
        echo '
                <div class="tintuc">  
                    <div class="detail-tintuc">
                        <div class="img-detail-tintuc">
                            <img height="500px" width="500px" src ="'.$hinh.'">
                        </div>
                    <div class="descri-detail-tintuc">
                    <h4 style="text-align: center; margin-top: 10px;">'.$tieu_de.'</h4>
                    <p>'.$noi_dung.'</p>
                    </div>
                </div>';
    }                    
?>
    
        