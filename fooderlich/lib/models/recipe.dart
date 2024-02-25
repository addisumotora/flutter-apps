final String category = 'Editor\'s Choice';
final String title = 'The Art of Dough';
final String description = 'Learn to make the perfect bread.';
final String chef = 'Ray Wenderlich';

class Recipe {
  String category;
  String title;
  String description;
  String chef;
  RecipeCardType cardType;

  Recipe(
      {required this.category,
      required this.title,
      required this.description,
      required this.chef,
      required this.cardType});
}

enum RecipeCardType { card1, card2, card3 }

List<Recipe> recipes = [
  Recipe(
      category: 'Editor\'s Choice',
      title: 'The Art of Dough',
      description: 'Learn to make the perfect bread.',
      chef: 'Ray Wenderlich',
      cardType: RecipeCardType.card1),
  Recipe(
      category: 'Recipe',
      title: 'Smoothies',
      description: 'Learn to make the perfect bread.',
      chef: 'Ray Wenderlich',
      cardType: RecipeCardType.card2),
  Recipe(
      category: 'Recipe Trends',
      title: 'Vegan',
      description: 'Learn to make the perfect bread.',
      chef: 'Ray Wenderlich',
      cardType: RecipeCardType.card3),
];
