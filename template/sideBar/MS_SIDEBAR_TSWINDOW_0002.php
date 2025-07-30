<?php 
    $sidebar_news_new = $action_news->getListNewsNew_hasLimit(3);//var_dump($sidebar_news_new);
?>
<!-- tin tức sidebar -->
<div class="last-news-sidebar">
    <h2 class="title-big-news-last">Tin nổi bật</h2>
    <ul class="list-news-last">
        <?php 
        foreach ($sidebar_news_new as $item) {
            $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang);
        ?>
        <li>
            <div class="item-news-sidebar clearfix">
                <img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive">
                <a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a>
            </div>
        </li>
        <?php } ?>
    </ul>
</div>