import 'package:flutter/material.dart';
import 'package:fooderlich/components/recipe_thumbnail.dart';
import 'package:fooderlich/models/recipe.dart';

class RecipeGridView extends StatelessWidget{
  final List<SimpleRecipe> recipes;
  const RecipeGridView({super.key, required this.recipes});

  @override
  Widget build(BuildContext context){
     return Padding(
      padding: const  EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16
      ),

      child: GridView.builder(itemCount: recipes.length, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(contex, index) {
        final simpleRecipe = recipes[index];
        return RecipeThumbnail(recipe: simpleRecipe);
      }),
     );
  }
}