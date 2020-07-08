import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/Product.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: kTextColor,
          ),
          onPressed: () => Navigator.pop(context)),
      elevation: 0,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: null,
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
