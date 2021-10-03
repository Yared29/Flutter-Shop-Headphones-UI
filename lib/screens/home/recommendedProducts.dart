import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_shop_headphones_ui/models/Product.dart';
import 'package:flutter_shop_headphones_ui/screens/home/components/recommededProductCard.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              children: [
                Expanded(
                    child: Text('Recommended',
                        style: TextStyle(
                            color: Palette.dark,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))),
                Text('View All',
                    style: TextStyle(
                      color: Palette.light,
                      fontSize: 20,
                    ))
              ],
            )),
        SizedBox(height: 5),
        Column(
          children: [
            for (Product product in products)
              RecommededProductCard(product: product),
          ],
        ),
      ],
    );
  }
}
