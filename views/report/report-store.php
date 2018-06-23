<?php
use miloschuman\highcharts\Highcharts;

/* @var $this yii\web\View */
$this->title = 'รายงานคลังวัสดุ';
?>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-pie-chart fa-fw"></i> รายงานคลังวัสดุ</h1>
     <?php
     	echo Highcharts::widget([
		   'options' => [
		      'title' => ['text' => 'ยอดการรับ-จ่าย วัสดุ'],
		      'xAxis' => [
		         'categories' => ['ปากกาน้ำเงิน', 'ปากกาแดง', 'ปากกาดำ']
		      ],
		      'yAxis' => [
		         'title' => ['text' => 'จำนวน']
		      ],
		      'series' => [
		         ['name' => 'จ่าย', 'data' => [1, 0, 4]],
		         ['name' => 'รับ', 'data' => [5, 7, 3]]
		      ]
		   ]
		]);
     ?>
     </div>        
</div>
