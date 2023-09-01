import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatefulWidget {

  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() { 
      if(_controller.offset == _controller.position.minScrollExtent){
        print('I am at the top');
      } else if (_controller.offset == _controller.position.maxScrollExtent){
        print('I am at the bottom');
      } 
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future: mockService.getExploreData(), 
      builder: (context, AsyncSnapshot<ExploreData> snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          final recipes = snapshot.data?.todayRecipes ?? [];
          final posts = snapshot.data?.friendPosts ?? [];
          return ListView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: recipes),
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: posts),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }

  @override
  void dispose() {
    _controller.removeListener(() { print('removed'); });
    super.dispose();
  }
}