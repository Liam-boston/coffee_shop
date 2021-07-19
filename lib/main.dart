import 'package:flutter/material.dart';

import 'package:coffee_shop/HomePage.dart';

void main() {
  runApp(CoffeeShop());
}

class CoffeeShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee shop",
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
      }
    );
  }
}
