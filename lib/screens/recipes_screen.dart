import 'package:flutter/material.dart';

import '../models/models.dart';
import '../components/components.dart';
import '../api/mock_fooderlich_service.dart';

class RecipeScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getRecipes(), 
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          return RecipesGridView(recipes: snapshot.data ?? []);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}