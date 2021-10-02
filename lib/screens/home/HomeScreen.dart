import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/screens/home/recommendedProducts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_shop_headphones_ui/screens/home/popularProducts.dart';

import 'components/customNavBar.dart';
import 'components/searchTextField.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(16),
          child: SvgPicture.asset('assets/icons/user.svg',
              color: Palette.dark, semanticsLabel: 'User Icon'),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 12),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset('assets/icons/cart.svg',
                      height: 25,
                      width: 25,
                      color: Palette.dark,
                      semanticsLabel: 'Cart Bag'),
                  Positioned(
                    height: 8,
                    width: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                    right: 3,
                    top: 18,
                  )
                ],
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 28.0, 15, 45),
                child: SearchTextField(),
              ),
              PopularProducts(),
              RecommendedProducts()
            ]),
      ),
      bottomNavigationBar: new CustomBottomNav(
        navCallback: (i) => print("Navigating to $i"),
      ),
    );
  }
}
