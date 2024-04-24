<div class="row">
            <div class="row formtitle margin10">
                <h1>BIỂU ĐỒ</h1>
            </div>
            <div class="row formcontent">
                <div class="row margin10 formdsloai">
                    <div
                        id="myChart" style="width:100%; width:800px; height:500px; align-items:center">
                    </div>
                    <script>
                        google.charts.load("current", {packages:["corechart"]});
                        google.charts.setOnLoadCallback(drawChart);
                        function drawChart() {

                            var data = google.visualization.arrayToDataTable([
                            ['Danh mục', 'Số lượng'],
                            <?php
                                foreach($dsthongke as $thongke){
                                    extract($thongke);
                                    echo "['$name', $soluong],";
                                }
                            ?>
                            ]);

                            var options = {
                            title: 'BIỂU ĐỒ SẢN PHẨM SỐ LƯỢNG TRONG DANH MỤC',
                            is3D: true,
                            };

                            var chart = new google.visualization.PieChart(document.getElementById('myChart'));
                            chart.draw(data, options);
                    }
                    </script>                
                </div>
            </div>