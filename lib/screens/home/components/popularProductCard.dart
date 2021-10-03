import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_shop_headphones_ui/models/Product.dart';
import 'package:flutter_shop_headphones_ui/screens/detail/detailScreen.dart';

class PopularProductCard extends StatelessWidget {
  final Product product;
  const PopularProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DetailScreen(product: product))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: 350,
            width: 270,
            decoration: BoxDecoration(
                color: product.colors[0].withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                      child: Image.asset(product.images[0],
                          fit: BoxFit.contain, height: 200, width: 200)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Text(product.name,
                      style: TextStyle(
                        color: Palette.dark,
                        fontSize: 20,
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 8, 20),
                    child: Text('\$${product.price}',
                        style: TextStyle(
                            color: Palette.dark,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ));
  }
}
