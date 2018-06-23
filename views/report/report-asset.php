<?php
use miloschuman\highcharts\Highcharts;

/* @var $this yii\web\View */
$this->title = 'รายงานครุภัณฑ์';
?>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-pie-chart fa-fw"></i> รายงานครุภัณฑ์</h1>
     <?php
     	echo Highcharts::widget([
		   'options' => [
		      'title' => ['text' => 'ยอดการรับ-จำหน่าย รายปี'],
		      'xAxis' => [
		         'categories' => ['2560', '2561']
		      ],
		      'yAxis' => [
		         'title' => ['text' => 'จำนวน']
		      ],
		      'series' => [
		         ['type' => 'column','name' => 'รับ', 'data' => [10, 15]],
		         ['type' => 'column','name' => 'จำหน่าย', 'data' => [5, 7]]
		      ]
		   ]
		]);
     ?>
     </div>        
</div>
