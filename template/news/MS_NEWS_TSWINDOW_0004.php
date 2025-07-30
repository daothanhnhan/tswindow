<?php 
    $home_tin_tuc_chung = $action_news->getNewsList_byMultiLevel_orderNewsId(74,'desc',1,4,'');//var_dump($home_tin_tuc_chung);
    $home_tin_cong_ty = $action_news->getNewsList_byMultiLevel_orderNewsId(73,'desc',1,4,'');
?>
<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">

<div class="gb-news-feature">
    <div class="container">
        <div class="gb-product-top">
            <div class="gb-prodct-top-tab">
                <div class="panel-heading">
                    <!--NAV ICONS-->
                    <ul class="nav nav-tabs product-menu-content">
                        <li class="active"><a href="#tab1default" data-toggle="tab">Tin tức chung</a></li>
                        <li><a href="#tab2default" data-toggle="tab">Tin công ty</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="gb-news-show">
            <div class="panel-body">
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1default">
                        <div class="gb-news-show-slide list-news owl-carousel owl-theme">
                            <?php 
                            $d = 0;
                            foreach ($home_tin_tuc_chung['data'] as $item) {
                                $d++;
                                $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                            ?>
                            <div class="item">
                                <div class="news-home-item">
                                    <div class="news-home-item-img">
                                        <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                                    </div>
                                    <div class="news-home-item-info">
                                        <h2>
                                            <a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a>
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i> <?= substr($item['news_created_date'], 0, 10) ?></span>
                                        </h2>
                                        <p><?= $rowLang['lang_news_des'] ?></p>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab2default">
                        <div class="gb-news-show-slide list-news owl-carousel owl-theme">
                            <?php 
                            $d = 0;
                            foreach ($home_tin_cong_ty['data'] as $item) {
                                $d++;
                                $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                            ?>
                            <div class="item">
                                <div class="news-home-item">
                                    <div class="news-home-item-img">
                                        <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                                    </div>
                                    <div class="news-home-item-info">
                                        <h2>
                                            <a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a>
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i> <?= substr($item['news_created_date'], 0, 10) ?></span>
                                        </h2>
                                        <p><?= $rowLang['lang_news_des'] ?></p>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-news-show-slide').owlCarousel({
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
                    items:3
                }
            }
        });
    });
</script>