import 'package:flutter/material.dart';

import 'package:coffee_shop/Home/HomePage.dart';
import 'package:coffee_shop/Details/CaramelMacchiato.dart';
import 'package:coffee_shop/Details/EspressoConPanna.dart';
import 'package:coffee_shop/Details/BlondeVanillaLatte.dart';

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
        "/caramel_macchiato": (context) => CaramelMacchiato(),
        "/espresso_con_panna": (context) => EspressoConPanna(),
        "/blonde_vanilla_latte": (context) => BlondeVanillaLatte()
      },
    );
  }
}
