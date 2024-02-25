import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_yummy_service.dart';
import 'package:fooderlich/components/friends_post_list_view.dart';
import 'package:fooderlich/components/today_recipes_list_view.dart';

class ExploreScreen extends StatelessWidget {
  final mockYummyService = MockYummyService();
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockYummyService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: snapshot.data?.recipes ?? []),
                FriendsPostListView(friendPosts: snapshot.data?.friendPosts ?? []),
                const SizedBox(height: 16),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
      });
  }
}