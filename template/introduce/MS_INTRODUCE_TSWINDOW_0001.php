<?php 
    $home_ve_chung_toi = $action_page->getPageDetail_byId(35, $lang);
?>
<div class="gb-introvechungtoi_denmoc">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="gb-introvechungtoi_denmoc-left">
                    <h2>Về chúng tôi</h2>
                    <p>
                        <?= $home_ve_chung_toi['page_des'] ?>
                    </p>
                    <a href="/<?= $home_ve_chung_toi['friendly_url'] ?>" class="gb-introvechungtoi_denmoc-doctiep">xem thêm <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                </div>
            </div>
            <div class="col-md-5">
                <div class="gb-introvechungtoi_denmoc-right">
                    <iframe src="https://player.vimeo.com/video/154407574?color=f2f0f0" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>