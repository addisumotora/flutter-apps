import 'package:flutter/material.dart';
import 'package:fooderlich/components/fooderlich_theme.dart';
import 'package:fooderlich/models/recipe.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key, required this.recipe});
  final Recipe recipe;
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 600,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mag1.webp'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Stack(children: [
          Text(
            category,
            style: FooderlichTheme.darkTextTheme.bodyLarge,
          ),
          Positioned(
            top: 20,
            child: Text(
              title,
              style: FooderlichTheme.darkTextTheme.displayLarge,
            ),
          ),
          // 1
          Positioned(
            bottom: 30,
            right: 0,
            child: Text(
              description,
              style: FooderlichTheme.darkTextTheme.bodyLarge,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(
              chef,
              style: FooderlichTheme.darkTextTheme.bodyLarge,
            ),
          )
        ]),
      ),
    );
  }
}
