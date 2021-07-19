import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: EdgeInsets.only(top: 5.0, bottom: 30.0),
      color: Color(0xFFDAB68C),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/");
            },
            icon: Icon(Icons.home, size: 30.0),
          ),
        ],
      ),
    );
  }
}
