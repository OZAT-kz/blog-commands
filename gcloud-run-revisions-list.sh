
// Псевдокод бэкенда на Node.js
async function getRecommendations(userId) {
  // Пытаемся найти перс. рекомендации в Redis
  let recs = await redis.get(\`recs:\${userId}\`);
  
  if (!recs) {
    // Если юзер новый или инкогнито — отдаем глобальные хиты продаж
    // Эту таблицу мы тоже заранее считаем в BQ и кладем в Redis!
    recs = await redis.get('recs:global_top_sellers');
  }
  
  return expandItemsFromDatabase(recs);
}
