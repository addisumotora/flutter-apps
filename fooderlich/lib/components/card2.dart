import 'package:flutter/material.dart';
import 'package:fooderlich/components/author_card.dart';
import 'package:fooderlich/components/fooderlich_theme.dart';
import 'package:fooderlich/models/recipe.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.webp'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/profile_pics/person_crispy.png'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text("Recipe",
                        style: FooderlichTheme.darkTextTheme.displayMedium)),
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothies',
                          style: FooderlichTheme.darkTextTheme.displayMedium,
                        ))),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
