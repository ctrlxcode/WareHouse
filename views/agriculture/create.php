<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\AssetMaster */

$this->title = Yii::t('app', 'Create Asset Master');
// $this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Asset Masters'), 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="asset-master-create">

    <div class="row">
	    <div class="col-lg-12">
	            <h1 class="page-header"><i class="fa fa-plus fa-fw"></i> เพิ่มครุภัณฑ์การเกษตร</h1>
	    </div>
	</div>  
<!-- 	<div class="row">
	    <div class="col-lg-12">
	        <ol class="breadcrumb">
	            <li><a href="index.php">หน้าแรก</a></li>
	            <li><a href="?r=computer">ครุภัณฑ์การเกษตร</a></li>
	            <li class="active">เพิ่มครุภัณฑ์การเกษตร</li>
	        </ol>
	    </div>
	</div> -->

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
