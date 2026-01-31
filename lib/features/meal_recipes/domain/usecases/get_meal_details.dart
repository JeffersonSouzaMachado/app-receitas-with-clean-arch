import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';

abstract class GetMealDetails {
  Future<MealDetail> call();
}

class GetMealDetailsImpl implements GetMealDetails {
  @override
  Future<MealDetail> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
