import 'package:coffee_shop/Details/CaramelMacchiato.dart';
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

import 'package:coffee_shop/Navbar/BottomNavbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(left: 15.0),
          children: [
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome, Liam",
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage("assets/profilePic/myProfile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Container(
                child: Text(
                  "Let's select the best taste for your next coffee break!",
                  style: TextStyle(
                    fontFamily: "nunito",
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Coffee of the Week",
                  style: TextStyle(
                    fontFamily: "varela",
                    fontSize: 17.0,
                    color: Color(0xFF473D3A),
                  ),
                ),
              ],
            ),
            Container(
              height: 410.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _coffeeListCard(
                      "assets/coffeeListCard/caramel.png",
                      "Caramel Macchiato",
                      "Freshly steamed milk marked with espresso and topped with a caramel drizzle\n",
                      "\$4.45",
                      false,
                      context),
                  _coffeeListCard(
                      "assets/coffeeListCard/coffee_beans.png",
                      "Espresso Con Panna",
                      "Espresso meets a dollop of whipped cream to enhance the caramelly flavors of a shot\n",
                      "\$3.95",
                      false,
                      context),
                  _coffeeListCard(
                      "assets/coffeeListCard/milk.png",
                      "Blonde Vanilla Latte",
                      "Velvety steamed milk and vanilla combine to put a new twist on an espresso classic\n",
                      "\$5.09",
                      false,
                      context),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore nearby",
                  style: TextStyle(
                      fontFamily: "varela",
                      fontSize: 17.0,
                      color: Color(0xFF473D3A)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "varela",
                      fontSize: 15.0,
                      color: Color(0xFFCEC7C4),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage("assets/coffee.jpg"),
                  _buildImage("assets/coffee2.jpg"),
                  _buildImage("assets/coffee3.jpg")
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}

_buildImage(String imgPath) {
  return Padding(
    padding: EdgeInsets.only(right: 15.0),
    child: Container(
      height: 100.0,
      width: 175.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image:
              DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
    ),
  );
}

_coffeeListCard(String imgPath, String coffeeName, String description,
    String price, bool isFavorite, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0),
    child: Container(
      height: 300.0,
      width: 225.0,
      child: Column(
        children: [
          Stack(
            children: [
              Container(height: 335.0),
              Positioned(
                top: 75.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 20.0),
                  height: 260.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDAB68C)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        coffeeName,
                        style: TextStyle(
                            fontFamily: "Varela",
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        description,
                        style: TextStyle(
                            fontFamily: "nunito",
                            fontSize: 14.0,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                                fontFamily: "varela",
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742)),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Center(
                              child: Icon(Icons.favorite,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 60.0,
                top: 25.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.contain),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          InkWell(
            onTap: () {
              if (coffeeName == "Caramel Macchiato") {
                Navigator.pushNamed(context, "/caramel_macchiato");
              } else if (coffeeName == "Espresso Con Panna") {
                Navigator.pushNamed(context, "/espresso_con_panna");
              } else if (coffeeName == "Blonde Vanilla Latte") {
                Navigator.pushNamed(context, "/blonde_vanilla_latte");
              }
            },
            child: Container(
              height: 50.0,
              width: 225.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFF473D3A)),
              child: Center(
                child: Text(
                  "Order Now",
                  style: TextStyle(
                      fontFamily: "nunito",
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
