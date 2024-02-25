import 'package:flutter/material.dart';
import 'package:fooderlich/components/friends_post_tile.dart';
import 'package:fooderlich/models/post.dart';

class FriendsPostListView extends StatelessWidget {
  final List<Post> friendPosts;
  const FriendsPostListView({super.key, required this.friendPosts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
      ),
      // 3
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Social Chefs ! ',
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          ListView.separated(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final post = friendPosts[index];
                return FriendsPostTile(post: post);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: friendPosts.length),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
