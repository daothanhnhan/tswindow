<?php 
     // $action_page = new action_page(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);
    $row = $action_page->getPageDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'pageDetail';

    $list_page = $action_page->listPage();//var_dump($list_page);
?>
<div class="banner-introduce">
    <img src="/images/banner-introduce.jpg" alt="" class="img-responsive">
</div>
<div class="gb-introduce">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="gb-introduce-content-left">
                    <ul class="menu-introduce-left">
                        <?php foreach ($list_page as $item) { ?>
                        <li><a href="/<?= $item['friendly_url'] ?>" title=""><?= $item['page_name'] ?> <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                        <?php } ?>
                        <!-- <li><a href="" title="">Triết lý kinh doanh <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                        <li><a href="" title="">Lịch sử hình thành <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                        <li><a href="" title="">Ban lãnh đạo <i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                        <li><a href="" title="">Danh hiệu và giải thưởng <i class="fa fa-angle-right" aria-hidden="true"></i></a></li> -->
                    </ul>
                </div>
            </div>
            <div class="col-md-9 border-left">
                <div class="gb-introduce-content-right">
                    <h2><?= $rowLang['lang_page_name'] ?></h2>
                    <?= $rowLang['lang_page_content'] ?>
                </div>
            </div>
        </div>
    </div>
</div>