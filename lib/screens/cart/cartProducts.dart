import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/models/Product.dart';
import 'package:flutter_shop_headphones_ui/screens/cart/components/cartProductCard.dart';

class CartProducts extends StatelessWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (Product product in cart) CartProductCard(product: product),
      ],
    );
  }
}
