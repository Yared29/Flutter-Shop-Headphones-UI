import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_shop_headphones_ui/screens/cart/cartProducts.dart';
import 'package:flutter_shop_headphones_ui/screens/cart/components/checkoutButton.dart';
import 'package:flutter_shop_headphones_ui/screens/cart/components/paymentCard.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text('Cart',
                    style: TextStyle(
                        color: Palette.dark,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 18),
              CartProducts(),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Text('Payment Methods',
                    style: TextStyle(
                      color: Palette.dark,
                      fontSize: 20,
                    )),
              ),
              PaymentCard(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text('Total Order',
                      style: TextStyle(
                        color: Palette.light,
                        fontSize: 27,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text('\$698',
                      style: TextStyle(
                          color: Palette.dark,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: CheckoutButton(),
    );
  }
}
