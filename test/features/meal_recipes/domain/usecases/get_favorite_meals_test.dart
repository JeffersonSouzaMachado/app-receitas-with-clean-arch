import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/get_favorite_meal.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockMealRepository;

  late GetFavoriteMeals usecases;

  setUp(() {
    mockMealRepository = MockMealRepository();
    usecases = GetFavoriteMealsImpl(mockMealRepository);
  });

  group('GetFavoriteMeals', () {
    test('Must call mockMealRepository.getFavoriteMeals and return List<MealDetail> when success', () async {
      when(() => mockMealRepository.getFavoriteMeals()).thenAnswer((_) async => tListMealDetail);

      final result = await usecases();

      expect(result, tListMealDetail);
      verify(() => mockMealRepository.getFavoriteMeals()).called(1);
    });
  });
}
