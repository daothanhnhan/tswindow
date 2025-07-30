<?php 
    $product_related1 = $action_product->getListProductRelate_byIdCat_hasLimit($productcat_id, 6);//var_dump($product_related1);die;
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-home-product gb-home-product-relate">
    <div class="titleCategoryProduct_denmoc">SẢN PHẨM LIÊN QUAN</div>
    <div class="gb-home-product-relate-slide owl-carousel owl-theme">
        <?php 
        foreach ($product_related1 as $item) {
            $row = $item;
            $rowLang = $action_product->getProductLangDetail_byId($row['product_id'],$lang);
        ?>
        <div class="item">
            <div class="gb-product_denmoc-item">
                <div class="product-item-img">
                    <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $row['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive"></a>
                </div>
                <div class="product-item-text">
                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h3>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-home-product-relate-slide').owlCarousel({
            loop:true,
            margin:10,
            navSpeed:500,
            nav:true,
            dots:false,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items:1,
                    nav: false
                },
                767:{
                    items:3
                }
            }
        });
    });
</script>