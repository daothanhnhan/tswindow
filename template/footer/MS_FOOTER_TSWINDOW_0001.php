<?php //include DIR_EMAIL."MS_EMAIL_MDRT_0004.php";?>
<?php 
    $footer_procat = $action_product->getProductCat_byProductCatIdParent(0, 'desc');
?>
<footer class="site-footer footer-default">
    <div class="footer-main-content_denmoc">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="footer-main-content_denmoc-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-denmoc uni-uppercase"><?= $rowConfig['web_name']?></h3>
                            <div class="widget-content">
                                <?php include DIR_CONTACT."MS_CONTACT_TSWINDOW_0005.php";?>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="footer-main-content_denmoc-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-denmoc uni-uppercase">Về chúng tôi</h3>
                            <div class="widget-content">
                                <div class="footer-link-denmoc">
                                    <?= $rowConfig['content_home7'] ?>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="footer-main-content_denmoc-element">
                        <h3 class="widget-title-footer-denmoc uni-uppercase">Sản phẩm</h3>
                        <div class="widget-content">
                            <div class="footer-link-denmoc">
                                <ul>
                                <?php foreach ($footer_procat as $item) { ?>
                                    <li><a href="/<?= $item['friendly_url'] ?>"><?= $item['productcat_name'] ?></a></li>
                                <?php } ?>        
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-main-content_denmoc-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-denmoc uni-uppercase">Đăng ký nhận tin</h3>
                            <div class="widget-content">
                                <?php include DIR_EMAIL."MS_EMAIL_TSWINDOW_0001.php";?>
                                <iframe src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/tswindow.vn&tabs=timeline&width=360&height=150&small_header=true&adapt_container_width=true&hide_cover=true&show_facepile=true&appId=237713920373832" width="360" height="150" style="border:none;overflow:hidden;margin-top: 15px;" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area_denmoc">
        <div class="container">
            <div class="copyright-content_denmoc">
                <p class="copyright-text_denmoc">© Copyright 2017. All rights reserved. Design by Goldbridge</p>
            </div>
        </div>
    </div>
</footer>