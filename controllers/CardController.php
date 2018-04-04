<?php

namespace app\controllers;

class CardController extends \yii\web\Controller
{
    public function actionCreate()
    {
        return $this->renderAjax('create');
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionReport()
    {
        return $this->render('report');
    }

}
