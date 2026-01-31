import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';

abstract class SearchMeal {
  Future<List<MealDetail>> call();
}

class SearchMealImpl implements SearchMeal {
  @override
  Future<List<MealDetail>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
