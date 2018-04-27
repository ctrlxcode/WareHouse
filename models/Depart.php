<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "depart".
 *
 * @property integer $id
 * @property string $depart_name
 */
class Depart extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'depart';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['depart_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'depart_name' => 'Depart Name',
        ];
    }
}
