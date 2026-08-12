
-- Матрицалық факторизация моделін оқыту
CREATE OR REPLACE MODEL \`ecommerce_ml.item_recommender\`
OPTIONS(
  model_type='matrix_factorization',
  user_col='user_id',
  item_col='item_id',
  rating_col='interaction_score',
  feedback_type='implicit', -- Бізде жасырын бағалаулар (5 жұлдыз емес, шертулер)
  l2_reg=0.1,               -- Боттарда артық оқытылмау үшін регуляризация
  num_factors=20            -- Жасырын векторлардың (эмбеддингтердің) өлшемділігі
) AS
SELECT
  user_id,
  item_id,
  interaction_score
FROM
  \`ecommerce_ml.training_data\`;
