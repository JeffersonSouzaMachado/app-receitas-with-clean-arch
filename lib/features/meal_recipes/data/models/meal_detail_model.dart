import 'package:meal_explorer/features/meal_recipes/data/models/ingredient_model.dart';
import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';

class MealDetailModel extends MealDetail {
  MealDetailModel({required super.id, required super.name, required super.imageUrl, required super.ingredients, required super.instructions});

  factory MealDetailModel.fromJson(Map<String, dynamic> json) {
    final List<IngredientModel> ingredientModel = [];

    return MealDetailModel(id: json['idMeal'], name: json['strMeal'], imageUrl: json['strMealThumb'], ingredients: ingredientModel, instructions: json['strInstructions']);
  }

  static void extractIngredients(Map<String, dynamic> json) {
    final List<IngredientModel> result = [];

    for (int i = 1; i <= 20; i++) {
      final ingredientName = json['strIngredient$i'];
      final measure = json['strMeasure$i'];

      if (ingredientName != null && ingredientName.trim().isNotEmpty) {
        result.add(IngredientModel(name: ingredientName, measure: measure));
      }
    }
  }
}
