<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\AssetMaster */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Asset Master',
]) . $model->code;
// $this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Asset Masters'), 'url' => ['index']];
// $this->params['breadcrumbs'][] = ['label' => $model->code, 'url' => ['view', 'id' => $model->code]];
// $this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="asset-master-update">

    <div class="row">
	    <div class="col-lg-12">
	            <h1 class="page-header"><i class="fa fa-pencil fa-fw"></i> แก้ไขครุภัณฑ์คอมพิวเตอร์ : <?=$model->sap_code;?></h1>
	    </div>
	</div>   
	<!-- <div class="row">
	    <div class="col-lg-12">
	        <ol class="breadcrumb">
	            <li><a href="index.php">หน้าแรก</a></li>
	            <li><a href="?r=computer">ครุภัณฑ์คอมพิวเตอร์</a></li>
	            <li class="active">แก้ไขครุภัณฑ์คอมพิวเตอร์</li>
	        </ol>
	    </div>
	</div> -->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
