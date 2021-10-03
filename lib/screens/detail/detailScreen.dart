import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_shop_headphones_ui/models/Product.dart';
import 'package:flutter_shop_headphones_ui/screens/components/largeButton.dart';
import 'package:flutter_shop_headphones_ui/screens/detail/components/colors.dart';
import 'package:flutter_shop_headphones_ui/screens/detail/components/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int qty = 1;
  addQty() => setState(() {
        qty++;
      });

  minusQty() => setState(() {
        qty--;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new, color: Palette.dark),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
        child: ListView(
          children: [
            Images(images: widget.product.images),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.category,
                        style: TextStyle(
                          color: Palette.light,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(widget.product.name,
                          style: TextStyle(
                              color: Palette.dark,
                              fontSize: 37,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                ProductColors(colors: widget.product.colors)
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlinedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(30, 30))),
                          onPressed: minusQty,
                          child: SvgPicture.asset(
                            'assets/icons/minus.svg',
                            height: 20,
                            width: 20,
                          )),
                      SizedBox(width: 7),
                      Text(qty.toString(),
                          style: TextStyle(
                            color: Palette.dark,
                            fontSize: 27,
                          )),
                      SizedBox(width: 7),
                      OutlinedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(30, 30))),
                        onPressed: addQty,
                        child: SvgPicture.asset(
                          'assets/icons/plus.svg',
                          height: 20,
                          width: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Text('\$${widget.product.price}',
                    style: TextStyle(
                        color: Palette.dark,
                        fontSize: 37,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.product.description,
              style: TextStyle(
                color: Palette.light,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      bottomSheet: LargeButton(text: 'Buy Now', onTap: () {}),
    );
  }
}
