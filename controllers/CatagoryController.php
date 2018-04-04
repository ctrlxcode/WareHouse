<?php

namespace app\controllers;

class CatagoryController extends \yii\web\Controller
{

    public function actionLists($id)
    {
        $countPosts = \app\models\AssetAcatagory::find()
         ->where(['groupid' => $id])
         ->count();

         $posts = \app\models\AssetAcatagory::find()
         ->where(['groupid' => $id])
         ->orderBy('groupid DESC')
         ->all();

         if($countPosts>0){
         	echo "<option value=''>--เลือกหมวดครุภัณฑ์--</option>";
	         foreach($posts as $post){

	         echo "<option value='".$post->catagory."'>".$post->descriptions."</option>";
	         }
         }
         else{
         	echo "<option>--ไม่ได้เลือกประเภทครุภัณฑ์--</option>";
         }
    }

}
