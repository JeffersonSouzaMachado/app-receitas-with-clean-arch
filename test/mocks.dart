import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';
import 'package:mocktail/mocktail.dart';

const tMealDetail = MealDetail(id: '544', name: 'Chicken', imageUrl: 'thumb.jpg', instructions: 'instructions', ingredients: []);

const tListMealDetail = [tMealDetail];
const tIdExample = '544';
const tName = 'Chicken';

void registerFallbackValues() {
  registerFallbackValue(tMealDetail);
}
