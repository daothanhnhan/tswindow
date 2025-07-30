<?php 
    $limit = 6;

    $list_anh = gallery($trang, $limit);
?>
<div class="banner-product">
    <img src="/images/banner-product.jpg" alt="" class="img-responsive">
</div>  
<div class="container">
    <div class="row">
        <div class="wp-gallery-content">
            <h2 class="title-big-gallery text-center">Thư viện hình ảnh</h2>
            <div class="row">
                <?php foreach ($list_anh['data'] as $item) { ?>
                <div class="col-md-4 col-sm-4 padding-5px">
                    <div class="item-gallery">
                        <div class="img-gallery">
                            <a href="javascript:void(0)" title="">
                                <img src="/images/<?= $item['name'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <!-- <div class="title-gallery">
                            <h2><a href="" title="">Tiêu đề Album 01</a></h2>
                        </div> -->
                    </div>      
                </div>
                <?php } ?>
            </div>  
            <div>
                <?php 
                    $config = array(
                        'current_page'  => $trang, // Trang hiện tại
                        'total_record'  => $list_anh['count'], // Tổng số record
                        'total_page'    => 1, // Tổng số trang
                        'limit'         => $limit,// limit
                        'start'         => 0, // start
                        'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
                        'link_first'    => '',// Link trang đầu tiên
                        'range'         => 9, // Số button trang bạn muốn hiển thị 
                        'min'           => 0, // Tham số min
                        'max'           => 0,  // tham số max, min và max là 2 tham số private
                    );

                    $pagination = new Pagination;
                    $pagination->init($config);
                    echo $pagination->htmlPaging_tuan($_GET['page']);
                ?>
            </div>
        </div>  
    </div>
</div>  
