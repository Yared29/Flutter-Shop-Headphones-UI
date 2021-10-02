import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            isDense: true,
            hintText: 'Search',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Palette.light, width: 2)),
            contentPadding: EdgeInsets.all(20),
            prefixIcon: Container(
              height: 20,
              width: 20,
              margin: EdgeInsets.all(15),
              child: SvgPicture.asset('assets/icons/search.svg',
                  color: Palette.light, semanticsLabel: 'Cart Bag'),
            )));
  }
}
