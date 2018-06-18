<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\AssetMaster */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="asset-master-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'sap_code')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'budget_year')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'regis_date')->textInput() ?></div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'aname')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'dept')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'positions')->textInput(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'floorno')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'roomno')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'groupid')->dropDownList(ArrayHelper::map(app\models\AssetGroup::find()->asArray()->all(), 'groupid', 'description'),[
                'prompt'=>'--เลือกประเภทครุภัณฑ์--',
                'onchange'=>'
             $.get( "'.Url::toRoute('catagory/lists').'", { id: $(this).val() } )
                            .done(function( data )
                   {
                              $( "select#catagory" ).html( data );
                            });
                        ' 
            ]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'catagory')->dropDownList($model->isNewRecord ? ['0'=>''] : ArrayHelper::map(app\models\AssetAcatagory::find()->where(['=','groupid',$model['groupid']])->asArray()->all(), 'catagory', 'descriptions'),[
                'prompt'=>'--เลือกหมวดครุภัณฑ์--',
                'id' => 'catagory'
            ]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'brand')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'asize')->textInput(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'model')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'serial_no')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'pur_date')->textInput() ?></div>
        <div class="col-md-4"><?= $form->field($model, 'doc_no')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'pur_docno')->textInput(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'receive_date')->textInput() ?></div>
        <div class="col-md-4"><?= $form->field($model, 'bud_id')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-4"><?= $form->field($model, 'a_status')->dropDownList(ArrayHelper::map(app\models\AssetAstatus::find()->asArray()->all(), 'a_status', 'descriptions'),['prompt'=>'--เลือกสถานะ--']) ?></div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
    </div>


    <?= $form->field($model, 'asset_note')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'pict_path')->textInput(['maxlength' => true]) ?>

    

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', '<i class="fa fa-save"></i> บันทึก') : Yii::t('app', '<i class="fa fa-save"></i> บันทึกแก้ไข'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
    </div>

    <?php ActiveForm::end(); ?>

</div>
