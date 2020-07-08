import 'package:flutter/material.dart';
import 'package:onlineshop/models/Product.dart';

import '../../../constants.dart';

class ColorSize extends StatelessWidget {
  const ColorSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF1A72B6),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFB4731E),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B89B),
                  ),
                ],
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Size"),
            Text(
              "${product.size} cm",
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
