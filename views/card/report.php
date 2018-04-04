<?php
/* @var $this yii\web\View */
$this->title = 'รายงานการส่งซ่อม';
?>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-list fa-fw"></i> รายงานการส่งซ่อม</h1>
     </div>        
</div>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><i class="fa fa-edit"></i></a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">สถานะการซ่อม <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">

          </ul>
        </li>
        <li><a><?php echo @$text_cat;?></a></li>
      </ul>
      
	  	<form class="navbar-form from-group navbar-right" role="search" method="get" action="?r=search">
	 
	    <input type="text" class="form-control" name="q" placeholder="ระบุชื่อ/ฝ่ายหรือเลขที่ใบส่งซ่อม เพื่อค้นหา" size="50" autofocus autocomplete="off">
	    <input type="hidden" name="p" id="p" value="search" >
	 
		</form>
	</div>
 
  </div>
</nav>
