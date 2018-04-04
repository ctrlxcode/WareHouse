<?php
use yii\helpers\Html;
use yii\helpers\Url;
use app\themes\repair\RepairAsset;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Menu;
use app\themes\repair\widgets\MetisMenu;

RepairAsset::register($this);
$asset_path = Yii::$app->assetManager->getPublishedUrl('@app/themes/repair/assets'); 
?>
<?php $this->beginPage(); ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <?= Html::csrfMetaTags() ?>
    <title><?php echo Html::encode($this->title); ?></title>
    <?php $this->head(); ?>


</head>

<body>
<?php $this->beginBody() ?>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><b>ระบบคลังพัสดุ (Warehouse System)</b></a>
            </div>
            <!-- /.navbar-header -->
            <?php
                if (!Yii::$app->user->isGuest) {
            ?>
            <div class="navbar-right ">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><div class="box_user_right"><div class="box_img_cycle2"><img src="<?= $asset_path; ?>/images/noimg.jpg" width="50%" id="img_cycle2" alt=""/></div> <?= Yii::$app->user->identity->username; ?> </div></a>
            <ul class="dropdown-menu dropdown-user">
                        <li><a href="?r=user/settings/profile"><i class="fa fa-user fa-fw"></i> ข้อมูลส่วนตัว</a>
                        </li>
                        <?php
                        if (Yii::$app->user->identity->isAdmin){
                        ?>
                        <li><a href="?r=setting"><i class="fa fa-gear fa-fw"></i> ตั้งค่าระบบ</a>
                        </li>
                        <?php } ?>
                        <li class="divider"></li>
                        <li><a href="<?= Url::to(['/user/security/logout'])?>" data-method="post"><i class="fa fa-sign-out fa-fw"></i> ออกจากระบบ</a>
                        </li>
                    </ul>
            </div>
            <?php } ?>
            <!-- /.navbar-top-links -->
            <div class="navbar-default sidebar" role="navigation">
              <div class="sidebar-nav navbar-collapse collapse">
                    <!-- <ul class="nav" id="side-menu">
                       <li><a href="index.php" <?php if(@addslashes($_GET['r']) == ""){ echo 'class="active"';}?>><i class="fa fa-home fa-fw"></i> หน้าแรก </a></li>
                       <?php
                        if (!Yii::$app->user->isGuest){
                       ?>
                       <li><a href="?r=computer/index" <?php if(@addslashes($_GET['r']) == "computer/index"){ echo 'class="active"';}?>><i class="fa fa-desktop fa-fw"></i> ครุภัณฑ์คอมพิวเตอร์ </a></li>
                       <li><a href="?r=card/index" <?php if(@addslashes($_GET['r']) == "card/index"){ echo 'class="active"';}?>><i class="fa fa-edit fa-fw"></i> ใบส่งซ่อม </a></li>
                       <li><a href="?r=card/report" <?php if(@addslashes($_GET['r']) == "card/report"){ echo 'class="active"';}?>><i class="fa fa-list fa-fw"></i> รายการส่งซ่อม</a></li>
                       <?php
                        if (Yii::$app->user->identity->isAdmin){
                       ?>
                       <li><a href="?r=member" <?php if(@addslashes($_GET['r']) == "member"){ echo 'class="active"';}?>><i class="fa fa-users fa-fw"></i> สมาชิก <span class="badge pull-right" style="background-color: #468847;hover{background-color: #356635;}" id="member_count"><?=\dektrium\user\models\User::find()->count();?></span></a></li>
                       <?php } ?>
                       <li><a href="?r=report" <?php if(@addslashes($_GET['r']) == "report"){ echo 'class="active"';}?>><i class="fa fa-pie-chart fa-fw"></i> รายงาน </a></li>
                       <?php
                        if (Yii::$app->user->identity->isAdmin){
                       ?>
                       <li><a href="?r=setting" <?php if(@addslashes($_GET['r']) == "setting"){ echo 'class="active"';}?>><i class="fa fa-gear  fa-fw"></i> ตั้งค่า </a></li>
                       <?php } ?>
                       <li><a href="<?= Url::to(['/user/security/logout'])?>" data-method="post"><i class="fa fa-sign-out fa-fw"></i> ออกจากระบบ </a></li>
                       <?php } else {
                            echo '<li><a href="?r=user/security/login" ';
                            if(@addslashes($_GET['r']) == "user/security/login"){ echo 'class="active"';}
                            echo '><i class="fa fa-users fa-fw"></i> เข้าสู่ระบบ </a></li>'; 
                        }?>
                    </ul>--> 
                    <div style="color:#CCC; text-align:center; padding-top:10px;">&copy;&nbsp;<?php echo @date("Y");?>&nbsp;By Ctrl+X Team.</div> 
                  
<?php
  $datas = Yii::$app->db->createCommand("select * from menus order by sort")->queryAll();
  $upsubmenu = "UPDATE sub_menu
  SET sub_menu.badge=(SELECT if(count(asset_master.groupid)=0,NULL,count(asset_master.groupid)) AS c
  FROM asset_master
  WHERE asset_master.groupid=sub_menu.title)";
  Yii::$app->db->createCommand($upsubmenu)->execute();
  $list_menu = [];

  foreach ($datas as $item) {
    if (isset($item['visible']) && !$item['visible']) {
                unset($list_menu['id']);
                continue;
    }
    $submenu = Yii::$app->db->createCommand("select s.* from menus m left join sub_menu s on s.sub_id=m.id where m.id=".$item['id']." order by sort")->queryAll();
            $list_menu[$item['id']] = $item;
            
            foreach ($submenu as $sub) {
              if($item['id']==$sub['sub_id']){
                $list_menu[$item['id']]['items'] = $submenu;
              } 
              
            }
                
           
        }
  // print_r($list_menu);
  echo MetisMenu::widget([
    'items' => $list_menu
  ]);

?>
<ul class="nav" id="side-menu">
<?php
                        if (!Yii::$app->user->isGuest){
                       ?>
                       <li><a href="<?= Url::to(['/user/security/logout'])?>" data-method="post"><i class="fa fa-sign-out fa-fw"></i> ออกจากระบบ </a></li>
                       <?php } else {
                            echo '<li><a href="?r=user/security/login" ';
                            if(@addslashes($_GET['r']) == "user/security/login"){ echo 'class="active"';}
                            echo '><i class="fa fa-users fa-fw"></i> เข้าสู่ระบบ </a></li>'; 
                        }?>  </ul>
                </div>

                <!-- /.sidebar-collapse -->
            </div>

            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row margin_top">
                <div class="col-lg-12"><p></p>
                  <?php echo $content; ?>
                </div>
            </div>
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->



<?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage(); ?>
