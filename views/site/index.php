<?php

/* @var $this yii\web\View */

$this->title = Yii::$app->name;
?>
<div class="site-index">

<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-home fa-fw"></i> หน้าแรก</h1>
     </div>        
</div>

<div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-edit fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">0</div>
                                <div>ใบส่งซ่อม ทั้งหมด</div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-file-text-o fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">0</div>
                                <div>ใบส่งซ่อม วันนี้</div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-desktop fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge"><?=$compCount;?></div>
                                <div>ครุภัณฑ์คอมพิวเตอร์</div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tags fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge"><?=$statusCount;?></div>
                                <div>สถานะจำหน่าย</div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
</div>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-wrench fa-fw"></i> 10 อันดับส่งซ่อม</h1>
     </div>        
</div>
</div>