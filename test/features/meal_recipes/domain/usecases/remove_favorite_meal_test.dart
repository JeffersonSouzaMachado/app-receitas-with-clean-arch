import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/remove_favorite_meal.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockMealRepository;

  late RemoveFavoriteMeal usecases;

  setUp(() {
    mockMealRepository = MockMealRepository();
    usecases = RemoveFavoriteMealImpl(mockMealRepository);
  });

  group('RemoveFavoriteMeal', () {
    test('Must call mockMealRepository.removeFavoriteMealById and return void when success', () async {
      when(() => mockMealRepository.removeFavoriteMealById(any())).thenAnswer((_) async {});

      await usecases(tIdExample);

      verify(() => mockMealRepository.removeFavoriteMealById(tIdExample)).called(1);
    });
  });
}
