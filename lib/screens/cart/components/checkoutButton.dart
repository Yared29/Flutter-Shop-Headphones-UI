import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 70,
        width: size.width,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Palette.dark, borderRadius: BorderRadius.circular(20)),
        child: Text('Checkout',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28)),
      ),
    );
  }
}
