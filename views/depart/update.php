<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Depart */

$this->title = 'Update Depart: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Departs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="depart-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
