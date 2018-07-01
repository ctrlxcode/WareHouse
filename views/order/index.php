<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Modal;
use yii\helpers\ArrayHelper; 
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\OrderSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Orders';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-index">

    <div class="row">
         <div class="col-lg-12">
                 <h1 class="page-header"><i class="fa fa-edit fa-fw"></i> ใบสั่งซื้อครุภัณฑ์</h1>
         </div>        
    </div>
    <?php
        if (Yii::$app->user->identity->isAdmin){ 
            echo "<p class='well well-sm'>";
            echo Html::button('<i class="glyphicon glyphicon-plus"></i> เพิ่มใบสั่งซื้อ',['value'=>  Url::to('index.php?r=order/create'),'class' => 'btn btn-success','id'=>'modalButton']); 
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
        echo "<center><h3>คุณแน่ใจที่จะลบรายการการสั่งซื้อครุภัณฑ์นี้ ? </h3></center>";
        Modal::end();
        $this->registerJS("$(function() {
            $('.popup-modal').click(function(e) {
                e.preventDefault();
                var modal = $('#modalDelete').on('show');
                modal.find('.modal-body').load($('.modal-dialog'));
                var that = $(this);
                var id = that.data('id');
                var name = that.data('name');
                modal.find('.modal-title').text('รายการการจัดซื้อครุภัณฑ์ :  \"' + name + '\"');

                $('#delete-confirm').click(function(e) {
                    e.preventDefault();
                    window.location = 'index.php?r=order/delete&id='+id;
                });
            });
        });",\yii\web\View::POS_READY);
    ?>  
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="page-header" style="padding-left: 10px;">
                <h2>รายการการจัดซื้อครุภัณฑ์</h2>
            </div>
        </div>
        <div class="panel-body">
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'order_no',
            'order_date',
            'order_regist',
            'order_group',
            //'order_dep',
            //'order_compan',
            //'order_total',
            //'order_image',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => Yii::$app->user->identity->isAdmin ? '{view} {update} {delete}' : '{view}',
                'headerOptions' => ['width' => '12%', 'class' => 'activity-view-link',],        
                    'contentOptions' => ['class' => 'padding-left-5px', 'align' => 'middle', 'noWrap' => true],

                'buttons' => [
                    'view' => function ($url, $model, $key) {
                        return Html::a(
                        '<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                        'class' => 'btn btn-info btn-xs',
                        'data-toggle' => 'modal', 'data-target' => '#modalView',
                        'data-title' => 'Detail Data']
                        );
                    },
                    'update' => function ($url, $model, $key) {
                        return Html::a(
                        '<span class="glyphicon glyphicon-pencil"></span>', $url, [
                        'class' => 'btn btn-success btn-xs',
                        // 'data-toggle' => 'modal', 'data-target' => '#modalUpdate',
                        'data-title' => 'Update Data']
                        );
                    },
                    'delete' => function ($url, $model, $key) {
                        return Html::a(
                        '', $url, [
                        'class' => 'btn btn-danger btn-xs glyphicon glyphicon-trash popup-modal',
                        'data-toggle' => 'modal', 'data-target' => '#modalDelete',
                        'data-id'     => $model->id,'data-name'   => $model->order_no,
                        'data-title' => 'Delete Data','id' => 'popupModal']
                        );
                    },
                ],
            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
    </div>
    </div>
</div>
