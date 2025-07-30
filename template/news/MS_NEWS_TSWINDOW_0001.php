<?php   
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];//echo 'tuan';die;                    
        $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
        if (newsCatPageHasSub) {
            $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,6,$slug);
        } else {
            $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');//var_dump($rows);die;
        }        
    }
    else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,6,'tin-tuc'); 
    // var_dump($rows);die;
?>
<div class="banner-product">
    <img src="/images/banner-product.jpg" alt="" class="img-responsive">
</div>  
<div class="gb-page-blog_denmoc">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_TSWINDOW_0004.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_TSWINDOW_0002.php";?>
            </div>
            <div class="col-md-9">
                <h1 class="title-big-blog"><?= $rowCatLang['lang_newscat_name'] ?></h1>
                <?php 
                $d = 0;
                foreach ($rows['data'] as $item) {
                    $d++;
                    $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                ?>
                <div class="gb-news-blog_denmoc-item">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="gb-news-blog_denmoc-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="gb-news-blog_denmoc-item-text">
                                <div class="gb-news-blog_denmoc-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                                    <span class="date">(<?= substr($item['news_created_date'], 0, 10) ?>)</span>
                                </div>
                                <div class="gb-news-blog_denmoc-item-text-des">
                                    <p><?= $rowLang['lang_news_des'] ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php 
                    if ($d%2==0) {
                        // echo '<hr style="width:100%;border:0;" />';
                    }
                    } ?>
                <div><?= $rows['paging'] ?></div>
            </div>
        </div>
    </div>
</div>