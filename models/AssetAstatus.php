<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asset_astatus".
 *
 * @property string $a_status
 * @property string $descriptions
 * @property string $enterby
 * @property string $enterdate
 * @property string $editdate
 * @property string $editby
 */
class AssetAstatus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'asset_astatus';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['a_status'], 'required'],
            [['enterdate', 'editdate'], 'safe'],
            [['a_status'], 'string', 'max' => 2],
            [['descriptions'], 'string', 'max' => 50],
            [['enterby', 'editby'], 'string', 'max' => 30],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'a_status' => 'A Status',
            'descriptions' => 'Descriptions',
            'enterby' => 'Enterby',
            'enterdate' => 'Enterdate',
            'editdate' => 'Editdate',
            'editby' => 'Editby',
        ];
    }
}
