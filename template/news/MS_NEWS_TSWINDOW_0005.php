<?php 
// var_dump($_GET['slug']);die();
    $action = new action();
    $action_service = new action_service();     
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];                    
        $rowCatLang = $action_service->getServiceCatLangDetail_byUrl($slug,$lang);//var_dump($rowCatLang);die();
        $rowCat = $action_service->getServiceCatDetail_byId($rowCatLang['servicecat_id'],$lang);//var_dump($rowCat['servicecat_id']);die();
        if ($_GET['page'] == 'muc-tuyen-dung') {
            $rows = $action_service->getServiceList_byMultiLevel_orderServiceId(5,'desc',$trang,6,$_GET['page']);
        } elseif ($_GET['page'] == 'cong-trinh-noi-bat') {
            $rows = $action_service->getServiceList_byMultiLevel_orderServiceId(4,'desc',$trang,6,$_GET['page']);
        } else {
            $rows = $action_service->getServiceList_byMultiLevel_orderServiceId($rowCat['servicecat_id'],'desc',$trang,6,$_GET['page']);
        }
        
    }
    else $rows = $action->getList('service','','','service_id','desc',$trang,12,$_GET['page']); 
    // var_dump($rows);
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
                <h1 class="title-big-blog"><?= $rowCatLang['lang_servicecat_name'] ?></h1>
                <?php 
                $d = 0;
                foreach ($rows['data'] as $item) {
                    $d++;
                    $rowLang = $action_service->getServiceLangDetail_byId($item['service_id'],$lang); 
                ?>
                <div class="gb-news-blog_denmoc-item">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="gb-news-blog_denmoc-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['service_img'] ?>" alt="<?= $rowLang['lang_service_name'] ?>" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="gb-news-blog_denmoc-item-text">
                                <div class="gb-news-blog_denmoc-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_service_name'] ?></a></h3>
                                    <span class="date">(<?= substr($item['service_create_date'], 0, 10) ?>)</span>
                                </div>
                                <div class="gb-news-blog_denmoc-item-text-des">
                                    <p><?= $rowLang['lang_service_des'] ?></p>
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