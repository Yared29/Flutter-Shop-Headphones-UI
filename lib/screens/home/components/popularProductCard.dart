import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 350,
        width: 270,
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                  child: Image.asset('assets/images/beats.png',
                      fit: BoxFit.cover, height: 200, width: 200)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
              child: Text('Beats Max',
                  style: TextStyle(
                    color: Palette.dark,
                    fontSize: 20,
                  )),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 8, 20),
                child: Text('\$500',
                    style: TextStyle(
                        color: Palette.dark,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
