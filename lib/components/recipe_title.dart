import 'package:flutter/cupertino.dart';

class RecipeTitle extends StatelessWidget {
  //const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
      "Recipes",
      style: TextStyle(fontSize: 30),
      ),
    );
  }

}
