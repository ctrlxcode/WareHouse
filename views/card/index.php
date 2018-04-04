<?php
use yii\bootstrap\Modal;
use yii\helpers\Url;
use yii\helpers\Html;
/* @var $this yii\web\View */
$this->title = 'ใบส่งซ่อม';
?>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-edit fa-fw"></i> ใบส่งซ่อม</h1>
     </div>        
</div>
<?php
	Modal::begin([
            'header'=>'',
            'headerOptions' => ['style' => 'background: #428bca;border-top-left-radius: 5px;border-top-right-radius: 5px;'],
            'id'=>'modal',
            'size'=>'modal-lg',
            'options'=>['tabindex' => false],
            'clientOptions' => ['backdrop' => 'static', 'keyboard' => FALSE]
        ]);
        echo "<div id='modalContent'></div>";
        Modal::end();
  
?>
<div class="well well-sm">
<?=Html::button('<i class="glyphicon glyphicon-plus"></i> เพิ่มใบส่งซ่อม',['value'=>  Url::to('index.php?r=card/create'),'class' => 'btn btn-success','id'=>'modalButton', 'style'=>'cursor:pointer;']);?>
</div>