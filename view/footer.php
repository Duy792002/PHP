<footer>
        <div class="footer1">
                <div>
                    <img src="view/images/logo.png" with="150px" height="150px">
                </div>
                <div class="footer1_con">
                    <div class="aa"><a href="#">Địa Chỉ: Trường Đại học Công Nghiệp Hà Nội</a><br></div>
                    <div class="aa"><a href="#">SĐT: 1900XXXXXX</a><br></div>
                    <div class="aa"><a href="#">Email: dstore@gmail.com</a><br></div>
                    <div class="aa"><a href="#">Câu hỏi thường gặp</a><br></div>
                </div>
                <div class="footer1_con">
                    <div class="aa"><a href="#">Giới thiệu cửa hàng</a><br></div>
                    <div class="aa"><a href="#">Chính sách bảo mật</a><br></div>
                    <div class="aa"><a href="#">Hướng dẫn mua hàng</a><br></div>
                    <div class="aa"><a href="#">Chính sách đổi trả</a><br></div>
                </div>
               <div class="footer1_con">
                    <div class="aa"><a href="#">Hệ thống cửa hàng</a><br></div>
                    <div class="aa"><a href="#">Chính sách đổi trả</a><br></div>
                    <div class="aa"><a href="#">Liên hệ hỗ trợ</a><br></div>
                    <div class="aa"><a href="#">Giới thiệu sản phẩm mới</a><br></div>
                </div>

                <div class="bottom-content" style="text-align:center">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5265.773997579407!2d105.73316025297851!3d21.05410220149119!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1715893890551!5m2!1svi!2s" 
                    width="300" 
                    height="150" 
                    style="border:0;" 
                    allowfullscreen="" 
                    loading="lazy" 
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>                
                </div>

                <div class="mxh">
                    <div>
                        <a href="https://www.facebook.com/dy7902" class="icon" id="aaa">
                        <i class='bx bxl-facebook-circle'></i></a>
                    </div>
                    <div>
                        <a href="https://www.instagram.com/" class="icon" id="aaa">
                        <i class='bx bxl-instagram'></i></a>
                    </div>
                    <div>
                        <a href="https://www.youtube.com/" class="icon" id="aaa">
                        <i class='bx bxl-youtube'></i></a>
                    </div>
                    <div>
                        <a href="https://www.tiktok.com/" class="icon" id="aaa">
                        <i class='bx bxl-tiktok' ></i></a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script>
        var images = ["view/images/2.jpg","view/images/3.jpg","view/images/4.jpg","view/images/1.jpg"];
        var num = 0;
        function next(){
            var silder = document.getElementById("slider");
            num++;
            if(num >= images.length){
                num = 0;
            }
            silder.src = images[num];
        }
        function back(){
            var silder = document.getElementById("slider");
            num--;
            if(num < 0){
                num = images.length-1;
            }
            slider.src = images[num];
        }
        setInterval(next,4000);
    </script>
</body>
</html>