<?php

namespace app\controllers;

class ReportController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionReportStore()
    {
        return $this->render('report-store');
    }

    public function actionReportAsset()
    {
        return $this->render('report-asset');
    }

}
