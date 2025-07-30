<?php 

$home_pro_hot = $action_product->getListProductHot_hasLimit(3);

?>

<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-home-categgory-product-tswindow">

    <div class="container">

        <div class="gb-home-product-tswindow-title text-center">

            <h2><a href="chi-tiet-san-pham">Sản phẩm nổi bật</a></h2>

            <p class="intro-product-feature-home text-center">TSWindow đi đầu trong lĩnh vực sản xuất và thi công cửa nhôm tại Việt Nam!</p>

        </div>

        <div class="gb-home-categgory-product-tswindow-body">

            <div class="row">

                <div class="wp-product-feature-home owl-carousel owl-theme">


                 <?php 

                 foreach ($home_pro_hot as $item) {

                    $row = $item;

                    $rowLang = $action_product->getProductLangDetail_byId($item['product_id'],$lang);

                    ?>

                    <div class="item">

                        <div class="item-product-feature-home">

                            <div class="main-img-product-feature-home">

                                <a href="/<?= $rowLang['friendly_url'] ?>" title="">

                                    <img src="/images/<?= $row['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive">

                                    <div class="overlay-img"></div>

                                </a>

                            </div>

                            <div class="name-product-feature-home text-center">

                                <h2>

                                    <a href="/<?= $rowLang['friendly_url'] ?>" title=""><?= $rowLang['lang_product_name'] ?></a>

                                </h2>

                            </div>

                        </div>  

                    </div>

                <?php } ?>

            </div>

        </div>

    </div>

</div>

</div>
<style type="text/css">
.wp-product-feature-home.owl-carousel .owl-nav.disabled {
    display: block;
}
.owl-next, .owl-prev {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
     padding: 10px 12px !important;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  background: #0d6fb0 !important;;
}
.wp-product-feature-home .owl-next {
  right: 0;
 
}
.wp-product-feature-home .owl-prev {
  left: 0;
 
}
</style>
<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>

<script>

    $(document).ready(function () {

        $('.wp-product-feature-home').owlCarousel({

            loop:true,

            responsiveClass:true,

            nav:true,

            navText:['<i class="fa fa-angle-double-left"></i>','<i class="fa fa-angle-double-right"></i>'],

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