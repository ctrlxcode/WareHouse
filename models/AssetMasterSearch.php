<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\AssetMaster;

/**
 * AssetMasterSearch represents the model behind the search form about `app\models\AssetMaster`.
 */
class AssetMasterSearch extends AssetMaster
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['code'], 'integer'],
            [['sap_code', 'budget_year', 'regis_date', 'aname', 'dept', 'positions', 'floorno', 'roomno', 'groupid', 'catagory', 'brand', 'asize', 'model', 'serial_no', 'pur_date', 'doc_no', 'pur_docno', 'receive_date', 'bud_id', 'asset_note', 'pict_path', 'a_status'], 'safe'],
            [['price'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = AssetMaster::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'code' => $this->code,
            'regis_date' => $this->regis_date,
            'price' => $this->price,
            'pur_date' => $this->pur_date,
            'receive_date' => $this->receive_date,
        ]);

        $query->andFilterWhere(['like', 'sap_code', $this->sap_code])
            ->andFilterWhere(['like', 'budget_year', $this->budget_year])
            ->andFilterWhere(['like', 'aname', $this->aname])
            ->andFilterWhere(['like', 'dept', $this->dept])
            ->andFilterWhere(['like', 'positions', $this->positions])
            ->andFilterWhere(['like', 'floorno', $this->floorno])
            ->andFilterWhere(['like', 'roomno', $this->roomno])
            ->andFilterWhere(['like', 'groupid', $this->groupid])
            ->andFilterWhere(['like', 'catagory', $this->catagory])
            ->andFilterWhere(['like', 'brand', $this->brand])
            ->andFilterWhere(['like', 'asize', $this->asize])
            ->andFilterWhere(['like', 'model', $this->model])
            ->andFilterWhere(['like', 'serial_no', $this->serial_no])
            ->andFilterWhere(['like', 'doc_no', $this->doc_no])
            ->andFilterWhere(['like', 'pur_docno', $this->pur_docno])
            ->andFilterWhere(['like', 'bud_id', $this->bud_id])
            ->andFilterWhere(['like', 'asset_note', $this->asset_note])
            ->andFilterWhere(['like', 'pict_path', $this->pict_path])
            ->andFilterWhere(['like', 'a_status', $this->a_status]);

        return $dataProvider;
    }
}
