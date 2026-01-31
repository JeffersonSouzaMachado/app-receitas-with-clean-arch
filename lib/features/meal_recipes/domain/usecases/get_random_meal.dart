import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';

abstract class GetRandomMeal {
  Future<MealDetail> call();
}

class GetRandomMealImpl implements GetRandomMeal {
  @override
  Future<MealDetail> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
