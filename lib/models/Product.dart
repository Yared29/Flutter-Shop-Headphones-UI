import 'package:flutter/material.dart';

class Product {
  String id;
  String name;
  String description;
  String category;
  String price;
  List<Color> colors;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.colors,
  });
}
