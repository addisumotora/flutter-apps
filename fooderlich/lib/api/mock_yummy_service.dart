import 'package:fooderlich/models/food_category.dart';
import 'package:fooderlich/models/recipe.dart';
import 'package:fooderlich/models/restuarant.dart';

import '../models/models.dart';

class ExploreData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;
  final List<Recipe> recipes;
  final List<SimpleRecipe> simpleRecipes;
  ExploreData(
      this.restaurants, this.categories, this.friendPosts, this.recipes, this.simpleRecipes);
}

class MockYummyService {
  Future<ExploreData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final categories = await _getCategories();
    final friendPosts = await _getFriendFeed();
    final recipes = await getRecipes();
    final simpleRecipes = await getSimpleRecipes();
    return ExploreData(restaurants, categories, friendPosts, recipes, simpleRecipes);
  }

  Future<List<FoodCategory>> _getCategories() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return categories;
  }

  Future<List<Post>> _getFriendFeed() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return posts;
  }

  Future<List<Restaurant>> _getRestaurants() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return restaurants;
  }

  Future<List<Recipe>> getRecipes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return recipes;
  }
  Future<List<SimpleRecipe>> getSimpleRecipes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return simpleRecipes;
  }
}