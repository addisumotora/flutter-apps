import 'package:flutter/material.dart';
import 'package:fooderlich/components/fooderlich_theme.dart';
import 'package:fooderlich/models/recipe.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag1.webp'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Icon(Icons.book, color: Colors.white, size: 40),
              const SizedBox(height: 8),
              Text(
                'Recipe Trends',
                style: FooderlichTheme.darkTextTheme.headlineLarge,
              ),
              const SizedBox(height: 30)
            ]),
          ),
          Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 14,
              children: [
                Chip(
                  label: Text('Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyLarge),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: () {
                    print('delete');
                  },
                ),
                Chip(
                  label: Text('Vegan',
                      style: FooderlichTheme.darkTextTheme.bodyLarge),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: () {
                    print('delete');
                  },
                ),
                Chip(
                  label: Text('Carrots',
                      style: FooderlichTheme.darkTextTheme.bodyLarge),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: () {
                    print('delete');
                  },
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
