import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

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
                          image: AssetImage("assets/profile.jpg"),
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
                  "Taste of the week",
                  style: TextStyle(
                    fontFamily: "varela",
                    fontSize: 17.0,
                    color: Color(0xFF473D3A),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontFamily: "varela",
                      fontSize: 17.0,
                      color: Color(0xFF473D3A),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15.0),
            Container(
                height: 410.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _coffeeListCard(
                        "assets/starbucks.png",
                        "Caffe Misto",
                        "CoffeeShop",
                        "Our dark, rich espresso balanced with steamed milk and a light layer of foam",
                        "\$4.99",
                        false),
                    _coffeeListCard(
                        "assets/starbucks.png",
                        "Caffe Latte",
                        "BrownHouse",
                        "Rich, full-bodied espresso with bittersweet milk sauce and steamed milk",
                        "\$3.99",
                        false),
                  ],
                )),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}

_coffeeListCard(String imgPath, String coffeeName, String shopName,
    String description, String price, bool isFavorite) {
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
                          height: 60.0,
                        ),
                        Text(
                          shopName + "\s",
                          style: TextStyle(
                              fontFamily: "nunito",
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
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
                                    color:
                                        isFavorite ? Colors.red : Colors.grey,
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
              onTap: () {},
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
      ));
}
