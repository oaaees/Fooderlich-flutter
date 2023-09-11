import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context){
    //TODO: Replace and add layout widgets
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1/1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png')
              )
            ),
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            const Text(
              'Shopping for ingredients?\nTap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              color: Colors.green,
              onPressed: (){
                Provider.of<TabManager>(context, listen: false).goToRecipes();
              },
              child: const Text('Browse Recipes'),
            )
          ],
        ) 
      ),
    );
  }
}