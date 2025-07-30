<?php 
    $action_email = new action_email();
    $action_email->lien_he1();
?>
<div class="gb-form-lienhe">
    <div class="gb-dress-intro">
        <h2 class="gb-dress-title"><?= $rowConfig['content_home10'] ?></h2>
        <ul>
            <li>
                <div class="icons">
                    <i class="fa fa-map-signs" aria-hidden="true"></i>
                </div>
                <p><?= $rowConfig['content_home1'] ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-mobile" aria-hidden="true"></i>
                </div>
                <p> <?= $rowConfig['content_home3'] ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                </div>
                <p><?= $rowConfig['content_home2'] ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-link" aria-hidden="true"></i>
                </div>
                <p><?= $rowConfig['content_home4'] ?></p>
            </li>
        </ul>
    </div>

    <h3>Gửi thư liên hệ</h3>
    <form action="" method="post">
        <div class="form-group">
            
            <input type="text" name="name" class="form-control" placeholder="Họ và tên">
        </div>
        <div class="form-group">
            
            <input type="email" name="email" class="form-control" placeholder="Email">
        </div>
        <div class="form-group">
            
            <input type="text" name="address" class="form-control" placeholder="Địa chỉ">
        </div>
        <div class="form-group">
            
            <input type="phone" name="phone" class="form-control" placeholder="Điện thoại">
        </div>
        <div class="form-group">
            
            <textarea class="input-xlarge form-control" name="note" rows="6" placeholder="Nội dung liên hệ"></textarea>
        </div>

        <button class="btn btn-gui" type="submit" name="lien_he">GỬI LIÊN HỆ</button>
    </form>
</div>