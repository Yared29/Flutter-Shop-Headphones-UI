import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 80,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset('assets/images/beats.png',
                  fit: BoxFit.cover, height: 50, width: 50),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 8, 2),
                    child: Text('Travel Card',
                        style: TextStyle(
                            color: Palette.dark,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 8, 20),
                      child: Text('Mastercard - 3356',
                          style: TextStyle(
                              color: Palette.light,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.arrow_forward_ios, color: Palette.dark),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
