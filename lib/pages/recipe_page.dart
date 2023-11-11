import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receipe1/components/recipe_list_item.dart';
import 'package:receipe1/components/recipe_menu.dart';
import 'package:receipe1/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  //const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildingRecipeAppBar(),
        body: ListView( // Column은 크기 넘어가면 짤림
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Mande Coffeee"),
            RecipeListItem("burger", "Made Buffer"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  }
  // 앱바에 대해 정확하게 분석하기!
  // action이 중요!
  // background 컬러가 파랑이 디폴트임
  //
  AppBar _buildingRecipeAppBar() => AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    actions: [
      Icon(Icons.search,
        color:  Colors.black,),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart,
        color: Colors.redAccent),
    ],
  );

}

