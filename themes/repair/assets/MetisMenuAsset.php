<?php
/**
 * @author    Dmytro Karpovych
 * @copyright 2015 NRE
 */

namespace app\themes\repair\assets;

use yii\web\AssetBundle;

class MetisMenuAsset extends AssetBundle
{
    public $sourcePath = '@app/themes/repair/assets';
    // public $baseUrl = '@web';

    public $css = [
        // 'metisMenu.css',
    ];

    public $js = [
        // 'metisMenu.js',
    ];

    public $depends = [
        'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap\BootstrapPluginAsset',
        'rmrevin\yii\fontawesome\AssetBundle',
    ];

} 
