<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ItemsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'คลังวัสดุ';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="items-index">

    <div class="row">
         <div class="col-lg-12">
                 <h1 class="page-header"><i class="fa fa-cubes fa-fw"></i> <?= Html::encode($this->title) ?></h1>
         </div>        
    </div>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('เพิ่มวัสดุ', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="page-header" style="padding-left: 10px;">
                <h2>รายการวัสดุ</h2>
            </div>
        </div>
        <div class="panel-body">
<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'items_code',
            'items_name',
            'items_price',
            'type_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
<?php Pjax::end(); ?>
    </div>
    </div>
</div>
