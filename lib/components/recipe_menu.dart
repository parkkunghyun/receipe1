import 'package:flutter/material.dart'; // 이게 있어야 컬러가 가능!

class RecipeMenu extends StatelessWidget {
  //const RecipeMenu({Key? key}) : super(key: key);
  // container는 자식없으면 커지려 하고 자식 있으면 그 사이즈로 감

  // decoration 과 color는 같이 못쓴다!
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
        Row( //Wrap 이면 아이콘이 너무 많아지면 아래로 내려감
          children: [
            _buildMenuItem(Icons.food_bank, "ALL"),
            SizedBox(width: 25,),//Spacer(), 부모길이를 비율대로 차지함
            _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
            SizedBox(width: 25,),
            _buildMenuItem(Icons.fastfood, "Buger"),
            SizedBox(width: 25,),
            _buildMenuItem(Icons.local_pizza, "Pizza"),
            SizedBox(width: 25,),
            _buildMenuItem(Icons.local_pizza, "Pizza"),
          ],
        ),
      ),
    );
  }

  Container _buildMenuItem(IconData mIcon, String text) {
    return Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                mIcon,
                size: 30,
                color: Colors.redAccent,
              ),
              SizedBox(height: 5),
              Text("$text"),
            ],
          ),
        );
  }
}
