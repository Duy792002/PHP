
    <form action="" method="post" >
        <h1>GỬI LIÊN HỆ VỀ SHOP</h1>
        <div class="wapper-lh" >
            <div class="col-xs-12 col-sm-6">
                <div class="wrapper-name">
                <input type="text" name="name" placeholder="Nhập họ tên" class="form-control" value="">
                    <div class="errors" style="opacity: 0">...</div>
                    <span class='icon-notify' style='right: 5px'></span>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6">
                <div class="wrapper-email">
                    <input type="text" name="email" placeholder="Email của bạn" class="form-control" value="">
                    <div class="errors" style="opacity: 0">...</div>
                    <span class='icon-notify' style='right: 5px'></span>
                    </div>
                </div>
            <div class="col-xs-12 col-sm-6">
                <div class="wrapper-sdt">
                    <input type="text" name="sdt" placeholder="Điện thoại" class="form-control" value="">
                    <div class="errors" style="opacity: 0">...</div>
                    <span class='icon-notify' style='right: 5px'></span>
                    </div>
                </div>
            <div class="col-xs-12">
                <div class="wrapper-content">
                    <textarea name="content" placeholder="Nội dung liên hệ" class="form-control" rows="6"></textarea>
                    <div class="errors" style="opacity: 0">...</div>
                    <span class='icon-notify' style='right: 5px'></span>
                    </div>
                </div>
            <div class="col-xs-12">
                <div class="form-group">
                    <input style='backgroun-color: #e44b25' type="submit" name="submit" value="GỬI LIÊN HỆ" class="btn btn-success" onClick="return confirm('Bạn thật sự muốn gửi không ?');">
                </div>
            </div>
        </div>
    </form>