import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/popularProductCard.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Text('Popular',
              style: TextStyle(
                  color: Palette.dark,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 12),
        Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              children: [
                Expanded(
                    child: Text('Sort by price',
                        style: TextStyle(
                          color: Palette.light,
                          fontSize: 20,
                        ))),
                SvgPicture.asset('assets/icons/filter.svg',
                    height: 20,
                    width: 20,
                    color: Palette.dark,
                    semanticsLabel: 'Filter search')
              ],
            )),
        SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularProductCard(),
              PopularProductCard(),
            ],
          ),
        )
      ],
    );
  }
}
