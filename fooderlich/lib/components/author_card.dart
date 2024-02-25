import 'package:flutter/material.dart';
import 'package:fooderlich/components/circle_image.dart';
import 'package:fooderlich/components/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({super.key,
      required this.authorName,
      required this.title,
      this.imageProvider});

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  var is_favorite = false;

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
                    imageProvider: widget.imageProvider,
                    imageRadius: 28,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.authorName,
                        style: FooderlichTheme.lightTextTheme.bodyMedium,
                      ),
                      Text(
                        widget.title,
                        style: FooderlichTheme.lightTextTheme.bodySmall,
                      )
                    ],
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(is_favorite ? Icons.favorite:  Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.red[400],
                  onPressed: () {
                    setState(() {
                      is_favorite = !is_favorite;
                    });
                  }),
            ],
          ));
    }
}
