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


class SimpleRecipe{
  String imageUrl;
  String title;
  String duration;

  SimpleRecipe({required this.imageUrl,required this.title, required this.duration});
}


List<SimpleRecipe> simpleRecipes = [
  SimpleRecipe(
      imageUrl: "assets/categories/asian.png",
      title: 'Smoked Salmon',
      duration: "1 hour"
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/coffee.png",
      title: 'Smoked coffee',
      duration: "30 mins"
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/burger.png",
      title: 'Burger burger',
      duration: "30 mins"
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/dessert.png",
      title: 'Dessert Salmon',
      duration: "2 hour"
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/fast_food.png",
      title: 'Fast food',
      duration: "20 mins"
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/mexican.png",
      title: 'Mexican Salmon',
      duration: "1 hour"
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/pizza.png",
      title: 'Italian pizza',
      duration: '30 mins'
    ),
    SimpleRecipe(
      imageUrl: "assets/categories/sushi.png",
      title: 'Sushi salad',
      duration: '1 hour'
    ), 
     SimpleRecipe(
      imageUrl: "assets/categories/seafood.png",
      title: 'Sea food Salmon',
      duration: '30 mins'
    ),
];