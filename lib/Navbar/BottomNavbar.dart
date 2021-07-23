import 'package:flutter/material.dart';

import 'package:coffee_shop/Home/HomePage.dart';
import 'package:coffee_shop/Details/DetailsPage.dart';
import 'package:coffee_shop/presentation/nav_icons.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        height: 75.0,
        padding: EdgeInsets.only(
          top: 3.0,
          bottom: 3.0,
        ),
        color: Color(0xFFDAB68C),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new HomePage(),
                      ),
                    );
                  },
                  icon: Icon(NavIcons.home, size: 30.0),
                ),
                Center(
                  child: Text("Home"),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new DetailsPage(),
                      ),
                    );
                  },
                  icon: Icon(NavIcons.order, size: 30.0),
                ),
                Center(
                  child: Text("Order"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
