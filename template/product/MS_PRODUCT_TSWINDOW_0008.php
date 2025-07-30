<?php                                                                        

if (isset($_GET['slug']) && $_GET['slug'] != '') {

    $slug = $_GET['slug'];

    $list_procat = $action_product->getProductCat_byProductCatIdParent(0, 'desc');//var_dump($list_procat);die;

    // $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);

    // $rowCat = $action_product->getProductCatDetail_byId($rowCatLang['productcat_id'],$lang);

    //     $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat['productcat_id'],'desc',$trang,9,$slug);//var_dump($rows);

    }else{

        // $rows = $action->getList('product','','','product_id','desc',$trang,9,'san-pham');

    }

    

    $_SESSION['sidebar'] = 'productCat';

    ?> 

    <div class="banner-product">

        <img src="/images/banner-product.jpg" alt="" class="img-responsive">

    </div>  

    <div class="gb-page-product-tswindow">    

        <div class="container">

            <!-- <div class="gb-page-product-intro">

                <h2 class="title-intro text-center">Sản phẩm</h2>

                <p class="text-intro text-center">TSWindow đi đầu trong lĩnh vực sản xuất và thi công cửa nhôm tại Việt Nam!</p>

            </div>
 -->
            <div class="wp-page-product">
                <div class="row">
                    <div class="col-md-3">
                     <?php include DIR_SIDEBAR."MS_SIDEBAR_TSWINDOW_0001.php";?>

                     <?php include DIR_SIDEBAR."MS_SIDEBAR_TSWINDOW_0002.php";?>
                 </div>
                 <div class="col-md-9">
                   <div class="row">

                    <?php 

                    $d = 0;

                    foreach ($list_procat as $item) {

                        $d++;

                        $row = $item;

                        $rowLangCat = $action_product->getProductCatLangDetail_byId($item['productcat_id'],$lang);

                        ?>

                        <div class="col-md-4">

                            <div class="gb-product-tswindow-item">

                                <div class="product-item-img">

                                    <a href="/<?= $rowLangCat['friendly_url'] ?>" title="">

                                        <img src="/images/<?= $row['productcat_img'] ?>" alt="<?= $rowLangCat['lang_productcat_name'] ?>" class="img-responsive">

                                        <div class="overlay-img"></div>

                                    </a>

                                </div>

                                <div class="product-info">

                                    <h2><a href="/<?= $rowLangCat['friendly_url'] ?>" title=""><?= $rowLangCat['lang_productcat_name'] ?></a></h2>

                                </div>



                            </div>

                        </div>

                        <?php

                        if ($d%3==0) {

                        // echo '<hr style="width:100%;border:0;" />';

                        }

                    }

                    ?>

                </div>

                <!-- <div>paging</div> -->
            </div>
        </div>
        

    </div>

    

</div>

</div>