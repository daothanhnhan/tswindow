<?php 
    $home_list_anh = gallery(1, 6);
?>
<div class="wp-gallery">
    <h2 class="title-big-gallery">Gallery</h2>
    <div class="row">
        <?php foreach ($home_list_anh['data'] as $item) { ?>
        <div class="col-md-4 col-sm-4 padding-5px">
            <div class="item-gallery">
                <div class="img-gallery">
                    <a href="javascript:void(0)" title="">
                        <img src="/images/<?= $item['name'] ?>" alt="" class="img-responsive">
                    </a>
                </div>
            </div>      
        </div>
        <?php } ?>
    </div>  
</div>  