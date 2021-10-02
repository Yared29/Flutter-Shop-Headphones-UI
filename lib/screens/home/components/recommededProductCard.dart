import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class RecommededProductCard extends StatelessWidget {
  const RecommededProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 170,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/beats.png',
                fit: BoxFit.cover, height: 150, width: 150),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
          ],
        ),
      ),
    );
  }
}
