<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Order;

/**
 * OrderSearch represents the model behind the search form of `app\models\Order`.
 */
class OrderSearch extends Order
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'order_no', 'order_regist', 'order_group', 'order_compan'], 'integer'],
            [['order_date', 'order_dep', 'order_image'], 'safe'],
            [['order_total'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
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
        $query = Order::find();

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
            'id' => $this->id,
            'order_no' => $this->order_no,
            'order_date' => $this->order_date,
            'order_regist' => $this->order_regist,
            'order_group' => $this->order_group,
            'order_compan' => $this->order_compan,
            'order_total' => $this->order_total,
        ]);

        $query->andFilterWhere(['like', 'order_dep', $this->order_dep])
            ->andFilterWhere(['like', 'order_image', $this->order_image]);

        return $dataProvider;
    }
}
