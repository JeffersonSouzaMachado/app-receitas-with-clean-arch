import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/save_favorite_meal.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockMealRepository;

  late SaveFavoriteMeal usecases;

  setUp(() {
    mockMealRepository = MockMealRepository();
    usecases = SaveFavoriteMealImpl(mockMealRepository);
  });

  setUpAll(() {
    registerFallbackValues();
  });

  group('SaveFavoriteMeal', () {
    test('Must call mockMealRepository.saveFavoriteMeal and return void when success', () async {
      when(() => mockMealRepository.saveFavoriteMeal(any())).thenAnswer((_) async {});

      await usecases(tMealDetail);

      verify(() => mockMealRepository.saveFavoriteMeal(tMealDetail)).called(1);
    });
  });
}
