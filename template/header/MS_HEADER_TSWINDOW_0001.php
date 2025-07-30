<?php include DIR_MENU."MS_MENU_TSWINDOW_0002.php";?>
<!--MENU DESTOP-->
<header>
    <div class="gb-header-tswindow">
        <div class="gb-header-top_tswindow">
            <div class="container">
                <div class="content-header-top">
                    <div class="row">
                        <div class="box-contact">
                            <ul class="wp-box-contact">
                                <li>
                                    <div class="box-icon">
                                        <span><i class="fa fa-volume-control-phone" aria-hidden="true"></i></span>
                                        <?= $rowConfig['content_home6'] ?>
                                    </div>
                                </li>
                                <li>
                                    <div class="box-icon">
                                        <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                        <?= $rowConfig['content_home2'] ?>
                                    </div>
                                </li>
                            </ul>
                            <div class="logo-responsive">
                                <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="img-responsive"></a>
                            </div>      
                        </div>  
                    </div>
                </div>
            </div>
        </div>
        <div class="gb-header-bottom_tswindow">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="gb-header-bottom_tswindow-logo">
                            <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="img-responsive"></a>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="gb-header-bottom_tswindow-menu">
                            <?php include DIR_MENU."MS_MENU_TSWINDOW_0001.php";?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        $(".sticky-menu").sticky({topSpacing:0});

    });
</script>