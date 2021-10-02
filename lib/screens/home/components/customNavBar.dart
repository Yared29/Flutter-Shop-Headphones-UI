import 'package:flutter/material.dart';
import 'package:flutter_shop_headphones_ui/config/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNav extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int> navCallback;

  CustomBottomNav({required this.navCallback, this.initialIndex: 0});

  @override
  _CustomBottomNavState createState() => new _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  late int _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialIndex;
    widget.navCallback(_selected);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2.0,
      child: Container(
        height: 66.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(0, 'assets/icons/home.svg', "Home"),
            _buildButton(1, 'assets/icons/favorite.svg', "Favorite"),
            _buildButton(2, 'assets/icons/user.svg', "User"),
            _buildButton(3, 'assets/icons/categories.svg', "Categories"),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(int index, String data, String tooltip) {
    return new Flexible(
      flex: 1,
      child: new Tooltip(
        message: tooltip,
        child: new InkWell(
          onTap: () {
            setState(() {
              _selected = index;
            });
            widget.navCallback(_selected);
          },
          child: new Center(
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  color: _selected == index ? Palette.dark : Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                margin: EdgeInsets.all(15),
                child: new SvgPicture.asset(data,
                    color: _selected == index ? Colors.white : Palette.light),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
