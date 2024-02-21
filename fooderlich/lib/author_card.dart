import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {super.key,
      required this.authorName,
      required this.title,
      this.imageProvider});

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleImage(
                  imageProvider: imageProvider,
                  imageRadius: 28,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: FooderlichTheme.lightTextTheme.bodyMedium,
                    ),
                    Text(
                      title,
                      style: FooderlichTheme.lightTextTheme.bodySmall,
                    )
                  ],
                ),
              ],
            ),
            IconButton(
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                onPressed: () {
                  const snackBar = SnackBar(content: Text('Favorite  Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
          ],
        ));
  }
}
