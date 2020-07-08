import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  @override
  CategoriesState createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hand Bag",
    "Jewellery",
    "Footwear",
    "Dresses",
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
