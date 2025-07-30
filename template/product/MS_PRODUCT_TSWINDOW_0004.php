<?php 
    $action_product = new action_product(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);
    $row = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);
    $_SESSION['productcat_id_relate'] = $row[$nameColIdProductCat_product];
    $_SESSION['sidebar'] = 'productDetail';
    $arr_id = $row['productcat_ar'];
    $arr_id = explode(',', $arr_id);
    $productcat_id = (int)$arr_id[0];
    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);
    $breadcrumb_url = $product_breadcrumb['friendly_url'];
    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];
    $use_breadcrumb = true;

    $img_sub = json_decode($row['product_sub_img']);

    $ten_sp = $rowLang['lang_product_name'];
    $mota = $rowLang['lang_product_content'];
?>
<link rel="stylesheet" href="/plugin/slickNav/slicknav.css"/>
<link rel="stylesheet" href="/plugin/slick/slick.css"/>
<link rel="stylesheet" href="/plugin/slick/slick-theme.css"/>
<div class="gb-chitiet_sanpham_denmoc">
    <div class="gb-chitiet_sanpham_denmoc-body">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <?php include DIR_SIDEBAR."MS_SIDEBAR_TSWINDOW_0001.php";?>
                    <?php include DIR_SIDEBAR."MS_SIDEBAR_TSWINDOW_0002.php";?>
                </div>
                <div class="col-md-9 border-left">
                    <div class="gb-chitiet_sanpham_denmoc-left">
                        <!--chi titest sản phẩm-->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="gb-chitiet_sanpham_denmoc_left-info">
                                    <h1 class="product_title entry-title"><?= $ten_sp ?></h1>
                                </div>
                                <div class="gb-chitiet_sanpham_denmoc_left-img">
                                    <div class="uni-single-car-gallery-images">
                                        <div class="slider slider-for">
                                            <div class="slide-item"><img src="/images/<?= $row['product_img'] ?>" alt="" class="img-responsive img1" data-zoom-image="/images/<?= $row['product_img'] ?>"></div>
                                            <?php 
                                              $d = 1;
                                              foreach ($img_sub as $item) {
                                                  $d++;
                                                  $image = json_decode($item, true);?>
                                            <div class="slide-item"><img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive img5" data-zoom-image="/images/<?= $image['image'] ?>"></div>
                                            <?php } ?>
                                        </div>
                                        <div class="slider slider-nav">
                                            <div class="slide-item-nav"><img src="/images/<?= $row['product_img'] ?>" alt="" class="img-responsive" data-zoom-image="/images/<?= $row['product_img'] ?>"></div>
                                            <?php foreach ($img_sub as $item) {
                                            $image = json_decode($item, true);?>
                                            <div class="slide-item-nav"><img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive" data-zoom-image="/images/<?= $image['image'] ?>"></div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--THÔNG SỐ VÀ MÔ TẢ-->
                        <div class="gb-thongso-mota">
                            <div class="uni-shortcode-tabs-default">
                                <div class="uni-shortcode-tab-3">
                                    <div class="tabbable-panel">
                                        <div class="tabbable-line">
                                            <ul class="nav nav-tabs ">
                                                <li  class="active">
                                                    <a href="#tab_default_32" data-toggle="tab">Mô tả sản phẩm</a>
                                                </li>
                                                <!-- <li>
                                                    <a href="#tab_default_33" data-toggle="tab">Sơ đồ lắp ghép</a>
                                                </li>
                                                <li>
                                                    <a href="#tab_default_34" data-toggle="tab">Mặt cắt</a>
                                                </li>
                                                <li>
                                                    <a href="#tab_default_35" data-toggle="tab">Bình luận</a>
                                                </li> -->
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_default_32">
                                                    <?= $mota ?>
                                                </div>
                                                <div class="tab-pane" id="tab_default_33">
                                                    <p>Sơ đồ lắp ghép</p>
                                                </div>
                                                <div class="tab-pane" id="tab_default_34">
                                                    <p>Mặt cắt</p>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--realte product-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_TSWINDOW_0005.php";?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/plugin/slick/scripts.js"></script>
<script src="/plugin/slick/slick.js"></script>
<script src="/plugin/slickNav/jquery.slicknav.js"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            speed: 500,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            speed: 500,
            asNavFor: '.slider-for',
            dots: false,
            focusOnSelect: true,
            slide: 'div'
        });
    });
</script>