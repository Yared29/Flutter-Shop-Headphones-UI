import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/screens/cart/cartScreen.dart';
import 'package:flutter_shop_headphones_ui/screens/home/HomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headphone Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
        scaffoldBackgroundColor: Palette.background,
        primaryColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.roboto().fontFamily,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: CartScreen(),
    );
  }
}
