import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshop/models/Product.dart';

import '../../../constants.dart';

class CartAndBuy extends StatelessWidget {
  const CartAndBuy({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(18)),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: product.color,
                  onPressed: () {},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
