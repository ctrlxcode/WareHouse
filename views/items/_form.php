<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Items */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="items-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'items_code')->textInput() ?>

    <?= $form->field($model, 'items_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'items_price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'type_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', '<i class="fa fa-save"></i> บันทึก') : Yii::t('app', '<i class="fa fa-save"></i> บันทึกแก้ไข'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
    </div>

    <?php ActiveForm::end(); ?>

</div>
