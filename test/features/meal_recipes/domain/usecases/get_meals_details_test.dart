import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/get_meal_details.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockMealRepository;

  late GetMealDetails usecases;

  setUp(() {
    mockMealRepository = MockMealRepository();
    usecases = GetMealDetailsImpl(mockMealRepository);
  });

  group('GetMealDetails', () {
    test('Must call mockMealRepository.GetMealDetails and return MealDetails when success', () async {
      when(() => mockMealRepository.getMealDetailsById(tIdExample)).thenAnswer((_) async => tMealDetail);

      final result = await usecases(tIdExample);

      expect(result, tMealDetail);
      verify(() => mockMealRepository.getMealDetailsById(tIdExample)).called(1);
    });
  });
}
