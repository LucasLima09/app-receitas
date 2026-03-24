import 'package:flutter/material.dart';

import '../models/category.dart';
import '../components/meal_item.dart';

import 'package:app_receitas/models/meal.dart';

class CategorysMealsScreen extends StatelessWidget {

  final List<Meal> meals;

  const CategorysMealsScreen(this.meals);


  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index){
          return MealItem(categoryMeals[index]);
        }
      ),
    );
  }
}
