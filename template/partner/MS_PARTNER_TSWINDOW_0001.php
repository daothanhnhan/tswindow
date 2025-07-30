<?php 
	function trademark () {
		global $conn_vn;
		$sql = "SELECT * FROM trademark";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$num = mysqli_num_rows($result);
		if ($num > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
		}
		return $rows;
	}
	$list_thuonghieu = trademark();
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="wp-partner-home">
	<div class="container">
		<div class="gb-partner-show-slide list-partner owl-carousel owl-theme">
			<?php foreach ($list_thuonghieu as $item) { ?>
		    <div class="item">
		        <div class="partner-home-item">
		            <div class="partner-home-item-img">
		                <a href=""><img src="/images/<?= $item['image'] ?>" alt="" class="img-responsive"></a>
		            </div>
		        </div>
		    </div>
		    <?php } ?>
		    <!-- <div class="item">
		        <div class="partner-home-item">
		            <div class="partner-home-item-img">
		                <a href=""><img src="images/logo2.jpg" alt="" class="img-responsive"></a>
		            </div>
		        </div>
		    </div>
		    <div class="item">
		        <div class="partner-home-item">
		            <div class="partner-home-item-img">
		                <a href=""><img src="images/logo3.jpg" alt="" class="img-responsive"></a>
		            </div>
		        </div>
		    </div>
		    <div class="item">
		        <div class="partner-home-item">
		            <div class="partner-home-item-img">
		                <a href=""><img src="images/logo4.jpg" alt="" class="img-responsive"></a>
		            </div>
		        </div>
		    </div>
		    <div class="item">
		        <div class="partner-home-item">
		            <div class="partner-home-item-img">
		                <a href=""><img src="images/logo5.jpg" alt="" class="img-responsive"></a>
		            </div>
		        </div>
		    </div>
		    <div class="item">
		        <div class="partner-home-item">
		            <div class="partner-home-item-img">
		                <a href=""><img src="images/logo6.jpg" alt="" class="img-responsive"></a>
		            </div>
		        </div>
		    </div> -->
		</div>
	</div>
</div>		
	
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-partner-show-slide').owlCarousel({
            loop:true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:30,
            autoplay:true,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:6
                }
            }
        });
    });
</script>