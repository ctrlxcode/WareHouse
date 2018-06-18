<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Modal;
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

    <?php
        if (Yii::$app->user->identity->isAdmin){ 
            echo "<p class='well well-sm'>";
            echo Html::button('<i class="glyphicon glyphicon-plus"></i> เพิ่มวัสดุ',['value'=>  Url::to('index.php?r=items/create'),'class' => 'btn btn-success','id'=>'modalButton']); 
            echo "</p>";
      } ?>
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

        Modal::begin([
            'header' => '',
            'headerOptions' => ['style' => 'background: #5bc0de;border-top-left-radius: 5px;border-top-right-radius: 5px;'],
            'id' => 'modalView',
            'size' => 'modal-md',
            'options'=>['tabindex' => false],
            'clientOptions' => ['backdrop' => 'static', 'keyboard' => FALSE]
        ]);

        Modal::end();
        $this->registerJS("$('#modalView').on('show.bs.modal', function(event){
            var button = $(event.relatedTarget)
            var modal = $(this)
            var title = button.data('title')
            var href = button.attr('href')
            modal.find('.modal-title').html(title)
            modal.find('.modal-body').html('')
            $.post(href)
            .done(function( data ) {
            modal.find('.modal-body').html(data)
            });
        });",\yii\web\View::POS_READY);

        Modal::begin([
            'header' => '',
            'headerOptions' => ['style' => 'background: #5cb85c;border-top-left-radius: 5px;border-top-right-radius: 5px;'],
            'id' => 'modalUpdate',
            'size' => 'modal-lg',
            'options'=>['tabindex' => false],
            'clientOptions' => ['backdrop' => 'static', 'keyboard' => FALSE]
        ]);

        Modal::end();
        $this->registerJS("$('#modalUpdate').on('show.bs.modal', function(event){
            var button = $(event.relatedTarget)
            var modal = $(this)
            var title = button.data('title')
            var href = button.attr('href')
            modal.find('.modal-title').html(title)
            modal.find('.modal-body').html('')
            $.post(href)
            .done(function( data ) {
            modal.find('.modal-body').html(data)
            });
        });",\yii\web\View::POS_READY);

        Modal::begin([
            'header' => '<h2 class="modal-title"></h2>',
            'headerOptions' => ['style' => 'color:#fff;background: #d9534f;border-top-left-radius: 5px;border-top-right-radius: 5px;'],
            'id' => 'modalDelete',
            'size' => 'modal-md',
            'options'=>['tabindex' => false],
            'clientOptions' => ['backdrop' => 'static', 'keyboard' => FALSE],
            'footer' => Html::a('ยืนยันลบ', '', ['class' => 'btn btn-danger', 'id' => 'delete-confirm']). '<button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>'
        ]);
        echo "<center><h3>คุณแน่ใจที่จะลบครุภัณฑ์นี้ ? </h3></center>";
        Modal::end();
        $this->registerJS("$(function() {
            $('.popup-modal').click(function(e) {
                e.preventDefault();
                var modal = $('#modalDelete').on('show');
                modal.find('.modal-body').load($('.modal-dialog'));
                var that = $(this);
                var id = that.data('id');
                var name = that.data('name');
                modal.find('.modal-title').text('ครุภัณฑ์คอมพิวเตอร์ :  \"' + name + '\"');

                $('#delete-confirm').click(function(e) {
                    e.preventDefault();
                    window.location = 'index.php?r=computer/delete&id='+id;
                });
            });
        });",\yii\web\View::POS_READY);
    ?>  
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
