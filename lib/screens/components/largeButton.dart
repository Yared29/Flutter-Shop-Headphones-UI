import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class LargeButton extends StatelessWidget {
  final text;
  final onTap;
  const LargeButton({Key? key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: size.width,
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(20, 15, 20, 10),
        decoration: BoxDecoration(
            color: Palette.dark, borderRadius: BorderRadius.circular(20)),
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28)),
      ),
    );
  }
}
