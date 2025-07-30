<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-video_denmoc">
    <div class="container">
        <div class="gb-video_denmoc-title">
            <h2>Video clip</h2>
        </div>
        <div class="gb-video_denmoc-slide owl-carousel owl-theme">
            <div class="item">
                <div class="gb-video_denmoc-item">
                    <a href="chi-tiet-tin-tuc"><img src="/images/video1.jpg" alt="" class="img-responsive"></a>
                    <h3><a href="">Đèn trùm phòng ngủ</a></h3>
                </div>
            </div>
            <div class="item">
                <div class="gb-video_denmoc-item">
                    <a href="chi-tiet-tin-tuc"><img src="/images/video2.jpg" alt="" class="img-responsive"></a>
                    <h3><a href="">Đèn trùm phòng ngủ</a></h3>
                </div>
            </div>
            <div class="item">
                <div class="gb-video_denmoc-item">
                    <a href="chi-tiet-tin-tuc"><img src="/images/video3.jpg" alt="" class="img-responsive"></a>
                    <h3><a href="">Đèn trùm phòng ngủ</a></h3>
                </div>
            </div>
            <div class="item">
                <div class="gb-video_denmoc-item">
                    <a href="chi-tiet-tin-tuc"><img src="/images/video4.jpg" alt="" class="img-responsive"></a>
                    <h3><a href="">Đèn trùm phòng ngủ</a></h3>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-video_denmoc-slide').owlCarousel({
            loop:true,
            margin:30,
            navSpeed:500,
            nav:false,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items: 1
                },
                767:{
                    items:2
                },
                992:{
                    items: 3
                }
            }
        });
    });
</script>