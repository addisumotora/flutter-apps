import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooderlich/components/card1.dart';
import 'package:fooderlich/components/card2.dart';
import 'package:fooderlich/components/card3.dart';
import 'package:fooderlich/models/food_category.dart';
import 'package:fooderlich/models/recipe.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<Recipe> recipes;

  const TodayRecipeListView({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recipes of the Day',
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return builRecipeCard(recipe);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 16);
                },
                itemCount: recipes.length),
          ),
        ],
      ),
    );
  }
}

Widget builRecipeCard(Recipe recipe) {
  if (recipe.cardType == RecipeCardType.card1) {
    return Card1(recipe: recipe);
  } else if (recipe.cardType == RecipeCardType.card2) {
    return Card2(recipe: recipe);
  } else if (recipe.cardType == RecipeCardType.card3) {
    return Card3(recipe: recipe);
  } else {
    throw Exception('This card doesn\'t exist yet');
  }
}
