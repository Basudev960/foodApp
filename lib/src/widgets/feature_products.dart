import 'package:flutter/material.dart';
import 'package:onlinemomo/src/models/product.dart';
import 'package:onlinemomo/src/widgets/commons.dart';
import 'package:onlinemomo/src/widgets/custome_text.dart';

List<Products> productsList = [
  Products(
      name: 'burger',
      image: "pizza.jpeg",
      rating: 4.2,
      wishList: true,
      price: 123.99,
      vendor: "ram"),
  Products(
      name: 'burger',
      image: "pizza.jpeg",
      rating: 4.7,
      wishList: false,
      price: 123.99,
      vendor: "ram"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "images/${productsList[index].image}",
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomeText(text: productsList[index].name),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: grey[300],
                                  offset: Offset(1, 1),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: productsList[index].wishList
                                  ? Icon(
                                      Icons.favorite,
                                      color: red,
                                      size: 18,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: red,
                                      size: 18,
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: CustomeText(
                                text: productsList[index].rating.toString(),
                                colors: orange,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: orange,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: orange,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: orange,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 14,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomeText(
                              text: "\$${productsList[index].price.toString()}",
                              weight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
