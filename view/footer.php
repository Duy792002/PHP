<footer>
        <div class="footer1">
                <div class="footer1_con">
                    <div class="aa"><a href="#">Giới thiệu cửa hàng</a><br></div>
                    <div class="aa"><a href="#">Chính sách bảo mật</a><br></div>
                    <div class="aa"><a href="#">Quy chế hoạt động</a><br></div>
                    <div class="aa"><a href="#">Tra cứu thông tin</a><br></div>
                    <div class="aa"><a href="#">Câu hỏi thường gặp</a><br></div>
                </div>
                <div class="footer1_con">
                    <div class="aa"><a href="#">Tuyển dụng</a><br></div>
                    <div class="aa"><a href="#">Khuyến mãi</a><br></div>
                    <div class="aa"><a href="#">Hướng dẫn mua hàng</a><br></div>
                    <div class="aa"><a href="#">Kiểm tra hóa đơn</a><br></div>
                </div>
                <div class="footer1_con">
                    <div class="aa"><a href="#">Hệ thống cửa hàng</a><br></div>
                    <div class="aa"><a href="#">Chính sách đổi trả</a><br></div>
                    <div class="aa"><a href="#">Hệ thống bảo hành</a><br></div>
                    <div class="aa"><a href="#">Giới thiệu sản phẩm mới</a><br></div>
                </div>
                <div class="rong" style="width: 20px;">
                </div>
                <div class="mxh">
                    <a href="https://www.facebook.com/dy7902" class="icon" id="aaa">
                        <i class='bx bxl-facebook-circle'></i></a>
                    <a href="https://www.instagram.com/" class="icon" id="aaa">
                        <i class='bx bxl-instagram'></i></a>
                    <a href="https://www.youtube.com/" class="icon" id="aaa">
                        <i class='bx bxl-youtube'></i></a>
                    <a href="https://www.tiktok.com/" class="icon" id="aaa">
                        <i class='bx bxl-tiktok' ></i></a>
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