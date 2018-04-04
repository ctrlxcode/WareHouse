<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "sub_menu".
 *
 * @property integer $sub_id
 * @property string $icon
 * @property string $url
 * @property string $label
 * @property string $title
 * @property string $badge
 * @property integer $visible
 * @property integer $id
 */
class SubMenu extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sub_menu';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sub_id'], 'required'],
            [['sub_id', 'visible'], 'integer'],
            [['icon', 'url', 'label', 'title', 'badge'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'sub_id' => 'Sub ID',
            'icon' => 'Icon',
            'url' => 'Url',
            'label' => 'Label',
            'title' => 'Title',
            'badge' => 'Badge',
            'visible' => 'Visible',
            'id' => 'ID',
        ];
    }
}
