import 'package:coffee_shop/presentation/app_icons.dart';
import 'package:flutter/material.dart';


class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        height: 55.0,
        padding: EdgeInsets.only(
          top: 3.0,
          bottom: 25.0,
        ),
        color: Color(0xFFDAB68C),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/");
              },
              icon: Icon(AppIcons.home, size: 40.0),
            ),
          ],
        ),
      ),
    );
  }
}
