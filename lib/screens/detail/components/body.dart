import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/Product.dart';
import 'package:onlineshop/screens/detail/components/product_title_image.dart';

import 'cart_buy.dart';
import 'color_size.dart';
import 'counterandheart.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  //White background
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      //Body Items
                      ColorSize(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      CounterAndHeart(),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      CartAndBuy(product: product),
                    ],
                  ),
                ),
                //Title
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
