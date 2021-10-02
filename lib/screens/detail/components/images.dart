import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class Images extends StatefulWidget {
  final List images;
  const Images({Key? key, required this.images}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            initialPage: 0,
            onPageChanged: (int index, CarouselPageChangedReason) {
              setState(() {
                _selectedIndex = index;
              });
            },
            height: 350.0,
            viewportFraction: 1.0,
          ),
          items: widget.images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: size.width,
                    height: 300,
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Image.asset(image));
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (String image in widget.images)
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                child: Container(
                  height: 2,
                  width: 30,
                  decoration: BoxDecoration(
                      color: _selectedIndex == widget.images.indexOf(image)
                          ? Palette.dark
                          : Palette.light,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
          ],
        )
      ],
    ));
  }
}
