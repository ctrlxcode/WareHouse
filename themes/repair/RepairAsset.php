<?php 
namespace app\themes\repair; 

use yii\web\AssetBundle; 

class RepairAsset extends AssetBundle{ 

	public $sourcePath = '@app/themes/repair/assets'; 

	public $css = [ 
		// 'css/bootstrap.css',
		'css/bootstrap.min.css',
		// 'css/datepicker.css', 
		'css/plugins/metisMenu/metisMenu.min.css',
		// 'css/plugins/timeline.css',
		'css/sb-admin-2.css',
		// 'css/bootstrap-combobox.css',
		// 'css/bootstrap-colorpicker.min.css',
		// 'css/plugins/morris.css',
		'css/font-awesome-4.1.0/css/font-awesome.min.css',
		'css/iconset/ios7-set-filled-1/flaticon.css',
		// 'css/selectize.default.css',
	]; 

	public $js = [ 
		// 'js/bootstrap.js',
		// 'js/bootstrap.min.js', 
		// 'js/bootstrap-datepicker.js',
		'js/plugins/metisMenu/metisMenu.min.js',
		// 'js/plugins/morris/raphael.min.js',
		// 'js/plugins/morris/morris.min.js',
		'js/sb-admin-2.js',
		// 'js/bootstrap-combobox.js',
		// 'js/bootstrap-colorpicker.js',
		// 'js/latest/typeahead.bundle.js',
		// 'js/standalone/selectize.js',
		'js/main.js',
	]; 

	public $depends = [ 
		'yii\web\YiiAsset', 
		'yii\bootstrap\BootstrapAsset', 
	]; 
}