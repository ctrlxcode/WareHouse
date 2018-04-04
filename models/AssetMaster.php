<?php

namespace app\models;

use Yii;
use app\models\AssetAstatus;
use app\models\AssetGroup;
use app\models\AssetAcatagory;

/**
 * This is the model class for table "asset_master".
 *
 * @property integer $code
 * @property string $sap_code
 * @property string $budget_year
 * @property string $regis_date
 * @property string $aname
 * @property string $dept
 * @property string $positions
 * @property string $floorno
 * @property string $roomno
 * @property string $groupid
 * @property string $catagory
 * @property string $brand
 * @property string $asize
 * @property string $model
 * @property string $serial_no
 * @property string $price
 * @property string $pur_date
 * @property string $doc_no
 * @property string $pur_docno
 * @property string $receive_date
 * @property string $bud_id
 * @property string $asset_note
 * @property string $pict_path
 * @property string $a_status
 */
class AssetMaster extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'asset_master';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['regis_date', 'pur_date', 'receive_date'], 'safe'],
            [['price'], 'number'],
            [['asset_note'], 'string'],
            [['sap_code', 'positions', 'brand', 'asize', 'model', 'pict_path'], 'string', 'max' => 50],
            [['budget_year'], 'string', 'max' => 4],
            [['aname'], 'string', 'max' => 150],
            [['dept'], 'string', 'max' => 8],
            [['floorno'], 'string', 'max' => 20],
            [['roomno'], 'string', 'max' => 60],
            [['groupid'], 'string', 'max' => 3],
            [['catagory'], 'string', 'max' => 5],
            [['serial_no', 'pur_docno'], 'string', 'max' => 30],
            [['doc_no'], 'string', 'max' => 100],
            [['bud_id', 'a_status'], 'string', 'max' => 2],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'code' => 'Code',
            'sap_code' => 'หมายเลขครุภัณฑ์',
            'budget_year' => 'ปีที่ซื้อ',
            'regis_date' => 'วันที่ลงทะเบียนครุภัณฑ์',
            'aname' => 'ชื่อครุภัณฑ์',
            'dept' => 'งาน',
            'positions' => 'สถานที่ตั้ง',
            'floorno' => 'ชั้น',
            'roomno' => 'ห้อง',
            'groupid' => 'ประเภทครุภัณฑ์',
            'catagory' => 'หมวดครุภัณฑ์',
            'brand' => 'ยี่ห้อง',
            'asize' => 'ขนาด',
            'model' => 'รุ่น',
            'serial_no' => 'Serial No',
            'price' => 'ราคา',
            'pur_date' => 'วันที่ซื้อ',
            'doc_no' => 'เลขใบเสนอราคา',
            'pur_docno' => 'เลขใบส่งของ',
            'receive_date' => 'วันที่รับเข้า',
            'bud_id' => 'งบประมาณ',
            'asset_note' => 'หมายเหตุ',
            'pict_path' => 'รูปภาพ',
            'a_status' => 'สถานะ',
        ];
    }

    function getAstatus() 
    {
         return $this->hasOne(AssetAstatus::className(), ['a_status'=>'a_status']);
    }

    function getGroup() 
    {
         return $this->hasOne(AssetGroup::className(), ['groupid'=>'groupid']);
    }

    public function getAcatagory()
    {
        return $this->hasOne(AssetAcatagory::className(), ['catagory' => 'catagory']);
    }
}
