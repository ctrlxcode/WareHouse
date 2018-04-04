<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "asset_group".
 *
 * @property string $groupid
 * @property string $description
 */
class AssetGroup extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'asset_group';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['groupid'], 'required'],
            [['groupid'], 'string', 'max' => 3],
            [['description'], 'string', 'max' => 60],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'groupid' => 'Groupid',
            'description' => 'Description',
        ];
    }
}
