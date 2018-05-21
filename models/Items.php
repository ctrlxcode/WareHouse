<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "items".
 *
 * @property integer $id
 * @property integer $items_code
 * @property string $items_name
 * @property string $items_price
 * @property integer $type_id
 */
class Items extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'items';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'items_code', 'type_id'], 'integer'],
            [['items_price'], 'number'],
            [['items_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'items_code' => 'Items Code',
            'items_name' => 'Items Name',
            'items_price' => 'Items Price',
            'type_id' => 'Type ID',
        ];
    }
}
