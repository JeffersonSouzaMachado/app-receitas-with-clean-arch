import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';

abstract class CheckFavorite {
  Future<bool> call();
}

class CheckFavoriteImpl implements CheckFavorite {
  final MealRepository repository;

  CheckFavoriteImpl(this.repository);

  @override
  Future<bool> call() async {
    return await repository.checkIfMealIsFavorite();
  }
}
