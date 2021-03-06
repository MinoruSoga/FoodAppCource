import 'package:flutter/material.dart';
import 'package:food_app_cource/commons.dart';
import 'package:food_app_cource/models/category.dart';
import 'package:food_app_cource/widgets/custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Past food", image: "sandwich.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: red[50]!,
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14,
                  color: black,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
