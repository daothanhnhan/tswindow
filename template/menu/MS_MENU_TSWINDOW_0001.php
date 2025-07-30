<nav class="gb-main-menu_denmoc" >
    <nav class="main-navigation uni-menu-text_denmoc">
        <div class="cssmenu">
            <!-- <ul>
                <li><a href="/index.php" class="slide-section">Trang chủ</a></li>
                <li><a href="/gioi-thieu">Giới thiệu</a></li>
                <li><a href="/san-pham">Sản phẩm</a></li>
                <li><a href="/tin-tuc">Tin tức</a></li>
                <li><a href="/tin-tuc">Tuyển dụng</a></li>
                <li><a href="/hinh-anh">Hình ảnh</a></li>
                <li><a href="/lien-he">Liên hệ</a></li>
                <li>
                    <a href="#" id="search">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </a>
                    <div class="gb-box-search">
                        <div class="gb-input-group">
                            <form action="/search-product/0" method="post">
                                <input type="text" name="q" placeholder="Tìm kiếm sản phẩm..." class="form-control">
                                <button class="gb-btn btn-search" type="submit">
                                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </li>
            </ul> -->
            <?php 
                $list_menu = $menu->getListMainMenu_byOrderASC();
                $menu->showMenu_byMultiLevel_mainMenuTraiCam_1($list_menu,0,$lang,0);
            ?>
        </div>
    </nav>
</nav>
<script>
    $(document).ready(function(){
        $("#search").click(function(){
            $(".gb-box-search").slideToggle("slow", function(){

            });
        });
    });
</script>