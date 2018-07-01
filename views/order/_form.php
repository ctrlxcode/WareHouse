<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Order */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="order-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'order_no')->textInput() ?>

    <?= $form->field($model, 'order_date')->widget(
                        DatePicker::className(), [
                        'language' => 'th',
                        'inline' => false,
                        'options'=>[
                                // 'disabled' => true, 
                            ],   
                        'clientOptions' => [                            
                            'todayHighlight'=>true,
                            'autoclose' => true,
                            'format' => 'yyyy-mm-dd']]) ?>

    <?= $form->field($model, 'order_regist')->widget(
                        DatePicker::className(), [
                        'language' => 'th',
                        'inline' => false,
                        'options'=>[
                                // 'disabled' => true, 
                            ],   
                        'clientOptions' => [                            
                            'todayHighlight'=>true,
                            'autoclose' => true,
                            'format' => 'yyyy-mm-dd']]) ?>

    <?= $form->field($model, 'order_group')->dropDownList(ArrayHelper::map(app\models\Group::find()->asArray()->all(), 'id', 'group_name'),[
                'prompt'=>'--เลือกกลุ่ม--',
                
            ]) ?>

    <?= $form->field($model, 'order_dep')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'order_compan')->textInput() ?>

    <?= $form->field($model, 'order_total')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'order_image')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
