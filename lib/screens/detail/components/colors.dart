import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';

class ProductColors extends StatefulWidget {
  final List colors;
  const ProductColors({Key? key, required this.colors}) : super(key: key);

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  int _selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var color in widget.colors)
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 5.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedColor = widget.colors.indexOf(color);
                });
              },
              child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: _selectedColor == widget.colors.indexOf(color)
                              ? Palette.light
                              : Colors.transparent)),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  )),
            ),
          )
      ],
    );
  }
}
