import 'package:flutter/material.dart';

class Product {
  String id;
  String name;
  String description;
  String category;
  String price;
  List<String> images;
  List<Color> colors;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.images,
    required this.colors,
  });
}

List<Product> cart = [
  Product(
      id: '1',
      name: 'Airpod Max',
      description:
          'AirPods deliver an unparalleled listening experience with all your devices. Every model connects effortlessly and packs rich, high-quality sound into an innovative wireless design. And pay for your new AirPods over six months, interest‑free when you choose to check out with Apple Card Monthly Installments.',
      category: 'Headphones',
      price: '2000',
      images: ['assets/images/airpod.png', 'assets/images/beats.png'],
      colors: [Colors.black, Colors.green, Colors.yellow]),
  Product(
      id: '2',
      name: 'Beats by Dre',
      description:
          'Beats Solo3 Wireless On-Ear Headphones - Apple W1 Headphone Chip, Class 1 Bluetooth, 40 Hours of Listening Time, Built-in Microphone - Black (Latest Model)',
      category: 'Headphones',
      price: '1500',
      images: ['assets/images/beats.png', 'assets/images/airpod.png'],
      colors: [Colors.green, Colors.green, Colors.black]),
];

List<Product> products = [
  Product(
      id: '1',
      name: 'Airpod Max',
      description:
          'AirPods deliver an unparalleled listening experience with all your devices. Every model connects effortlessly and packs rich, high-quality sound into an innovative wireless design. And pay for your new AirPods over six months, interest‑free when you choose to check out with Apple Card Monthly Installments.',
      category: 'Headphones',
      price: '2000',
      images: ['assets/images/airpod.png', 'assets/images/beats.png'],
      colors: [Colors.red, Colors.green, Colors.black, Colors.yellow]),
  Product(
      id: '2',
      name: 'Beats by Dre',
      description:
          'Beats Solo3 Wireless On-Ear Headphones - Apple W1 Headphone Chip, Class 1 Bluetooth, 40 Hours of Listening Time, Built-in Microphone - Black (Latest Model)',
      category: 'Headphones',
      price: '1500',
      images: ['assets/images/beats.png', 'assets/images/airpod.png'],
      colors: [Colors.blue, Colors.green, Colors.black]),
  Product(
      id: '3',
      name: 'Airpod Max',
      description:
          'AirPods deliver an unparalleled listening experience with all your devices. Every model connects effortlessly and packs rich, high-quality sound into an innovative wireless design. And pay for your new AirPods over six months, interest‑free when you choose to check out with Apple Card Monthly Installments.',
      category: 'Headphones',
      price: '2000',
      images: ['assets/images/airpod.png', 'assets/images/beats.png'],
      colors: [Colors.black, Colors.red, Colors.yellow]),
  Product(
      id: '4',
      name: 'Beats by Dre',
      description:
          'Beats Solo3 Wireless On-Ear Headphones - Apple W1 Headphone Chip, Class 1 Bluetooth, 40 Hours of Listening Time, Built-in Microphone - Black (Latest Model)',
      category: 'Headphones',
      price: '1500',
      images: ['assets/images/beats.png', 'assets/images/airpod.png'],
      colors: [Colors.green, Colors.red, Colors.black]),
];
