<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AssetMasterSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="asset-master-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'code') ?>

    <?= $form->field($model, 'sap_code') ?>

    <?= $form->field($model, 'budget_year') ?>

    <?= $form->field($model, 'regis_date') ?>

    <?= $form->field($model, 'aname') ?>

    <?php // echo $form->field($model, 'dept') ?>

    <?php // echo $form->field($model, 'positions') ?>

    <?php // echo $form->field($model, 'floorno') ?>

    <?php // echo $form->field($model, 'roomno') ?>

    <?php // echo $form->field($model, 'groupid') ?>

    <?php // echo $form->field($model, 'catagory') ?>

    <?php // echo $form->field($model, 'brand') ?>

    <?php // echo $form->field($model, 'asize') ?>

    <?php // echo $form->field($model, 'model') ?>

    <?php // echo $form->field($model, 'serial_no') ?>

    <?php // echo $form->field($model, 'price') ?>

    <?php // echo $form->field($model, 'pur_date') ?>

    <?php // echo $form->field($model, 'doc_no') ?>

    <?php // echo $form->field($model, 'pur_docno') ?>

    <?php // echo $form->field($model, 'receive_date') ?>

    <?php // echo $form->field($model, 'bud_id') ?>

    <?php // echo $form->field($model, 'asset_note') ?>

    <?php // echo $form->field($model, 'pict_path') ?>

    <?php // echo $form->field($model, 'a_status') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
