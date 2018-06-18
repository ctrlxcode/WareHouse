<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Items */

$this->title = 'เพิ่มวัสดุ';
// $this->params['breadcrumbs'][] = ['label' => 'Items', 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="items-create">

    <div class="row">
	    <div class="col-lg-12">
	            <h1 class="page-header"><i class="fa fa-plus fa-fw"></i> เพิ่มวัสดุ</h1>
	    </div>
	</div> 

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
