import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;

  const RecipesGridView({
    super.key,
    required this.recipes
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        itemCount: recipes.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //To make it one column, you can increase this number 
          //until its bigger than the screen
          maxCrossAxisExtent: 200,
        ), 
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return RecipeThumbnail(recipe: recipe);
        },
      ),
    );
  }
}