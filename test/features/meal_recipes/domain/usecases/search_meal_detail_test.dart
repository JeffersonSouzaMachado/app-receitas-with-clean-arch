import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/search_meal.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockMealRepository;

  late SearchMeal usecases;

  setUp(() {
    mockMealRepository = MockMealRepository();
    usecases = SearchMealImpl(mockMealRepository);
  });

  group('SearchMeal', () {
    test('Must call mockMealRepository.searchMealByName and return List<MealDetail> when success', () async {
      when(() => mockMealRepository.searchMealByName(any())).thenAnswer((_) async => tListMealDetail);

      final result = await usecases(tName);

      expect(result, tListMealDetail);
      verify(() => mockMealRepository.searchMealByName(tName)).called(1);
    });
  });
}
