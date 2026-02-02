import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/get_favorite_meal.dart';
import 'package:mocktail/mocktail.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockMealRepository;

  late GetFavoriteMeals usecases;

  setUp(() {
    mockMealRepository = MockMealRepository();
    usecases = GetFavoriteMealsImpl(mockMealRepository);
  });



  
}
