import 'package:flutter/material.dart';
import 'package:onlinemomo/src/models/category.dart';
import 'package:onlinemomo/src/widgets/commons.dart';
import 'package:onlinemomo/src/widgets/custome_text.dart';

List<Category> categoryList = [
  Category(name: 'burger', images: 'burger.jpeg'),
  Category(name: 'burger', images: 'burger.jpeg'),
  Category(name: 'burger', images: 'burger.jpeg'),
  Category(name: 'burger', images: 'burger.jpeg'),
  Category(name: 'burger', images: 'burger.jpeg'),
  Category(name: 'burger', images: 'burger.jpeg'),
];

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
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
                        color: red[50],
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoryList[index].images}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomeText(
                  text: "${categoryList[index].name}",
                  size: 14,
                  colors: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
