<?php 
    $sidebar_news = $action_news->getNewsCat_byNewsCatIdParent(0, 'desc');
?>
<div class="gb-product-sidebar-left">
    <ul class="menu-introduce-left">
        <!-- <li><a href="" title="">Tin tức chung <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Tin công ty <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
        <li><a href="" title="">Tin chuyên ngành<i class="fa fa-angle-right" aria-hidden="true"></i></a></li> -->
        <?php 
	    foreach ($sidebar_news as $item) {
	        $rowLang = $action_news->getNewsCatLangDetail_byId($item['newscat_id'],$lang); 
	    ?>
	    <li><a href="/<?= $rowLang['friendly_url'] ?>"><i class="fa fa-angle-right" aria-hidden="true"></i> <?= $rowLang['lang_newscat_name'] ?></a></li>
	    <?php } ?>
    </ul>
</div>