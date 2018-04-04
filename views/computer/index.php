<?php
 
use yii\helpers\Html; 
use yii\helpers\Url;
use yii\bootstrap\Modal;
use yii\grid\GridView;
use yii\helpers\ArrayHelper; 
 
/* @var $this yii\web\View */
$this->title = 'ครุภัณฑ์คอมพิวเตอร์';
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-lg-12">
            <h1 class="page-header"><i class="fa fa-desktop fa-fw"></i> ครุภัณฑ์คอมพิวเตอร์</h1>
    </div>
</div>       
<div class="asset-master-index">
  <!-- <div class="row">
      <div class="col-lg-12">
          <ol class="breadcrumb">
              <li><a href="index.php">หน้าแรก</a></li>
              <li class="active">ครุภัณฑ์คอมพิวเตอร์</li>
          </ol>
      </div>
  </div> -->
   <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

      <?php
        if (Yii::$app->user->identity->isAdmin){ 
            echo "<p class='well well-sm'>";
            echo Html::button('<i class="glyphicon glyphicon-plus"></i> เพิ่มครุภัณฑ์คอมพิวเตอร์',['value'=>  Url::to('index.php?r=computer/create'),'class' => 'btn btn-success','id'=>'modalButton']); 
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
   <?= GridView::widget([
       'dataProvider' => $dataProvider,
       'filterModel' => $searchModel,
       'columns' => [
           ['class' => 'yii\grid\SerialColumn'],
           // 'code',
           'sap_code',
           // 'budget_year',
           // 'regis_date',
           'aname',
           // 'dept',
           // 'positions',
           // 'floorno',
           // 'roomno',
           // 'groupid',
           // 'catagory',
           // 'brand',
           // 'asize',
           // 'model',
           // 'serial_no',
           // 'price',
           // 'pur_date',
           // 'doc_no',
           // 'pur_docno',
           // 'receive_date',
           // 'bud_id',
           // 'asset_note:ntext',
           // 'pict_path',
           // 'a_status',
           [
           	'attribute' => 'a_status',
            'filter' => ArrayHelper::map(app\models\AssetAstatus::find()->asArray()->all(), 'a_status', 'descriptions'),
           	'value' => function ($model){
			           		return $model->astatus->descriptions;
			           }
           ],
           [   'class' => 'yii\grid\ActionColumn', 
                // 'visible' => (Yii::$app->user->identity->isAdmin),
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
                        'data-toggle' => 'modal', 'data-target' => '#modalUpdate',
                        'data-title' => 'Update Data']
                        );
                    },
                    'delete' => function ($url, $model, $key) {
                        return Html::a(
                        '', $url, [
                        'class' => 'btn btn-danger btn-xs glyphicon glyphicon-trash popup-modal',
                        'data-toggle' => 'modal', 'data-target' => '#modalDelete',
                        'data-id'     => $model->code,'data-name'   => $model->sap_code,
                        'data-title' => 'Delete Data','id' => 'popupModal']
                        );
                    },
                ],


            ],
       ],
   ]); ?>
</div>
 