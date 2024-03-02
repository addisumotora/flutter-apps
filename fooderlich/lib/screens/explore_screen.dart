import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_yummy_service.dart';
import 'package:fooderlich/components/friends_post_list_view.dart';
import 'package:fooderlich/components/today_recipes_list_view.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExploreScreenState();
  }
}

class _ExploreScreenState extends State<ExploreScreen> {
  late ScrollController _controller;

  void _scrollerListener(){
    if(_controller.offset >= _controller.position.maxScrollExtent && !_controller.position.outOfRange){
      print('i am at the bottom!');
    }
    if(_controller.offset <= _controller.position.minScrollExtent && _controller.position.outOfRange){
      print("i am at the top!");
    }
  }

  @override
  void initState() {
    _controller = ScrollController(); 
    _controller.addListener(_scrollerListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mockYummyService = MockYummyService();
    return FutureBuilder(
        future: mockYummyService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: snapshot.data?.recipes ?? []),
                FriendsPostListView(
                    friendPosts: snapshot.data?.friendPosts ?? []),
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
  @override
  void dispose(){
    _controller.removeListener(_scrollerListener);
    _controller.dispose();
    super.dispose();
  }
}
