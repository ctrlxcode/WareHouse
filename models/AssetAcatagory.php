<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asset_acatagory".
 *
 * @property string $groupid
 * @property string $catagory
 * @property string $descriptions
 */
class AssetAcatagory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'asset_acatagory';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['groupid'], 'string', 'max' => 3],
            [['catagory'], 'string', 'max' => 5],
            [['descriptions'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'groupid' => 'Groupid',
            'catagory' => 'Catagory',
            'descriptions' => 'Descriptions',
        ];
    }
}
