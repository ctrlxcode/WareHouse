<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "menus".
 *
 * @property integer $id
 * @property string $icon
 * @property string $url
 * @property string $label
 * @property string $title
 * @property string $badge
 * @property integer $visible
 */
class Menus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'menus';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['visible'], 'integer'],
            [['icon', 'url', 'label', 'title', 'badge'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'icon' => 'Icon',
            'url' => 'Url',
            'label' => 'Label',
            'title' => 'Title',
            'badge' => 'Badge',
            'visible' => 'Visible',
        ];
    }
}
