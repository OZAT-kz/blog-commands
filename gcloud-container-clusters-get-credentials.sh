
-- Обучение модели матричной факторизации
CREATE OR REPLACE MODEL \`ecommerce_ml.item_recommender\`
OPTIONS(
  model_type='matrix_factorization',
  user_col='user_id',
  item_col='item_id',
  rating_col='interaction_score',
  feedback_type='implicit', -- У нас неявные оценки (не 5 звезд, а клики)
  l2_reg=0.1,               -- Регуляризация, чтобы не переобучиться на ботах
  num_factors=20            -- Размерность скрытых векторов (эмбеддингов)
) AS
SELECT
  user_id,
  item_id,
  interaction_score
FROM
  \`ecommerce_ml.training_data\`;
