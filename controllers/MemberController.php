<?php

namespace app\controllers;

use dektrium\user\models\User;
use dektrium\user\models\UserSearch;

class MemberController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $searchModel  = \Yii::createObject(UserSearch::className());
        $dataProvider = $searchModel->search(\Yii::$app->request->get());

        $dataProvider->pagination->pageSize=15;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionProfile()
    {
        return $this->render('profile');
    }

}
