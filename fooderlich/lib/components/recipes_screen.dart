import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_yummy_service.dart';
import 'package:fooderlich/components/recipe_grid_view.dart';
import 'package:fooderlich/components/recipe_thumbnail.dart';
import 'package:fooderlich/models/recipe.dart';
import 'package:fooderlich/models/recipe.dart';
class RecipesScreen extends StatelessWidget {
  final yummyService = MockYummyService();
  RecipesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: yummyService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Center(child: RecipeGridView(recipes: snapshot.data!.simpleRecipes));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
