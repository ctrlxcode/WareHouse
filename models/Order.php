<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "order".
 *
 * @property int $id
 * @property int $order_no
 * @property string $order_date
 * @property int $order_regist
 * @property int $order_group
 * @property string $order_dep
 * @property int $order_compan
 * @property string $order_total
 * @property string $order_image
 */
class Order extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'order';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'order_no'], 'required'],
            [['id', 'order_no', 'order_group', 'order_compan'], 'integer'],
            [['order_date', 'order_regist'], 'safe'],
            [['order_total'], 'number'],
            [['order_dep', 'order_image'], 'string', 'max' => 255],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_no' => 'Order No',
            'order_date' => 'Order Date',
            'order_regist' => 'Order Regist',
            'order_group' => 'Order Group',
            'order_dep' => 'Order Dep',
            'order_compan' => 'Order Compan',
            'order_total' => 'Order Total',
            'order_image' => 'Order Image',
        ];
    }
}
