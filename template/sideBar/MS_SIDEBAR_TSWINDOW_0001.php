<?php 
    $sidebar_procat = $action_product->getProductCat_byProductCatIdParentSort(0, 'asc');
?>
<div class="gb-product-sidebar-left">
    <h2 class="title-big-product-sidebar">Sản phẩm</h2>
    <ul class="menu-introduce-left">
        <!-- <li><a href="" title="">Hệ cửa đi <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Hệ cửa sổ <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Hệ cửa lùa <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Hệ mặt dựng <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Hệ vách & lam chớp <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Hệ lan can - hàng rào <i class="fa fa-angle-right" aria-hidden="true"></i></a></li> -->
        		<?php 
                foreach ($sidebar_procat as $item) {
                    // $row_sb = $item;
                    $rowLang_sb = $action_product->getProductCatLangDetail_byId($item['productcat_id'], $lang); 
                ?>
                <li><a href="/<?= $rowLang_sb['friendly_url'] ?>"><i class="fa fa-angle-right" aria-hidden="true"></i> <?= $rowLang_sb['lang_productcat_name'] ?></a></li>
                <?php } ?>
    </ul>
</div>