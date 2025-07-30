<?php 
    $action_service = new action_service();
    $home_cong_trinh_noi_bat = $action_service->getServiceList_byMultiLevel_orderServiceId(4,'desc',1,6,'');
?>
<div class="outstanding-works">
    <h2 class="title-big-outstanding-works">Công trình nổi bật</h2>
    <div class="row">
        <?php 
        $d = 0;
        foreach ($home_cong_trinh_noi_bat['data'] as $item) {
            $d++;
            $rowLang = $action_service->getServiceLangDetail_byId($item['service_id'],$lang); 
        ?>
        <div class="col-md-4 padding-5px">
            <div class="item-construction">
                <div class="img-construction">
                    <a href="/<?= $rowLang['friendly_url'] ?>" title="">
                        <img src="/images/<?= $item['service_img'] ?>" alt="<?= $rowLang['lang_service_name'] ?>" class="img-responsive">
                    </a>
                </div>
                <div class="name-construction">
                    <h2>
                        <a href="/<?= $rowLang['friendly_url'] ?>" title=""><?= $rowLang['lang_service_name'] ?></a>
                    </h2>
                </div>
            </div>      
        </div>
        <?php } ?>
    </div>  
</div>  