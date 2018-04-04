<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\AssetMaster */

$this->title = $model->code;
// $this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Asset Masters'), 'url' => ['index']];
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="asset-master-view">

<div class="row">
    <div class="col-lg-12">
            <h1 class="page-header"><i class="fa fa-th-list fa-fw"></i> ครุภัณฑ์คอมพิวเตอร์ : <?=$model->sap_code;?></h1>
    </div>
</div> 
<!-- <div class="row">
    <div class="col-lg-12">
        <ol class="breadcrumb">
            <li><a href="index.php">หน้าแรก</a></li>
            <li><a href="?r=computer">ครุภัณฑ์คอมพิวเตอร์</a></li>
            <li class="active">แสดงข้อมูลครุภัณฑ์คอมพิวเตอร์</li>
        </ol>
    </div>
</div>  --> 

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'code',
            'sap_code',
            'budget_year',
            'regis_date',
            'aname',
            'dept',
            'positions',
            'floorno',
            'roomno',
            [
                'attribute' => 'groupid',
                'value' => function ($model){
                            return $model->group->description;
                }
            ],
            [
                'attribute' => 'catagory',
                'value' => function ($model){
                            $catagory = app\models\AssetAcatagory::find()
                            ->where(['=','groupid',$model['groupid']])
                            ->andWhere(['=','catagory',$model['catagory']])
                            ->one();

                            return $catagory['descriptions'];
                }
            ],
            'brand',
            'asize',
            'model',
            'serial_no',
            'price',
            'pur_date',
            'doc_no',
            'pur_docno',
            'receive_date',
            'bud_id',
            'asset_note:ntext',
            'pict_path',
            [
                'attribute' => 'a_status',
                'value' => function ($model){
                            return $model->astatus->descriptions;
                }
            ],
        ],
    ]) ?>

</div>
