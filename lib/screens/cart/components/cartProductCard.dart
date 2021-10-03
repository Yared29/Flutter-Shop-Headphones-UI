import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_shop_headphones_ui/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  const CartProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 8,
      ),
      child: Container(
        height: 100,
        width: size.width,
        decoration: BoxDecoration(color: Palette.background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: product.colors[0].withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    product.images[0],
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 8, 2),
                    child: Text(product.name,
                        style: TextStyle(
                          color: Palette.dark,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 8, 20),
                      child: Text('\$${product.price}',
                          style: TextStyle(
                              color: Palette.dark,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/icons/delete.svg',
                  height: 20,
                  width: 20,
                  color: Palette.dark,
                  semanticsLabel: 'Delete Icon'),
            )
          ],
        ),
      ),
    );
  }
}
