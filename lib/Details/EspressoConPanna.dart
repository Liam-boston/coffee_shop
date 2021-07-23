import 'package:flutter/material.dart';

import 'package:coffee_shop/presentation/ingredient_icons.dart';

class EspressoConPanna extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EspressoConPannaState();
  }
}

class _EspressoConPannaState extends State<EspressoConPanna> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF8FC28A),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2.5,
                  child: Container(
                    height: (MediaQuery.of(context).size.height),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                        ),
                        color: Colors.white),
                  ),
                ),

                // content
                Positioned(
                  top: (MediaQuery.of(context).size.height / 2.5) + 30.0,
                  left: 25.0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height),
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        Text(
                          "Preparation time",
                          style: TextStyle(
                            fontFamily: "nunito",
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF726B68),
                          ),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          "5min",
                          style: TextStyle(
                            fontFamily: "nunito",
                            fontSize: 14.0,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontFamily: "nunito",
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF726B68),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 110.0,
                          padding: EdgeInsets.only(right: 25.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildIngredientItem(
                                "Water",
                                Icon(IngredientIcons.water,
                                    size: 25.0, color: Colors.white),
                                Color(0xFF6FC5DA),
                              ),
                              buildIngredientItem(
                                "Ice",
                                Icon(IngredientIcons.ice_cube,
                                    size: 25.0, color: Colors.white),
                                Color(0xFFF8B870),
                              ),
                              buildIngredientItem(
                                "Brewed Espresso",
                                Icon(Icons.coffee_rounded,
                                    size: 25.0, color: Colors.white),
                                Color(0xFF615955),
                              ),
                              buildIngredientItem(
                                "Sugar",
                                Icon(IngredientIcons.sugar,
                                    size: 25.0, color: Colors.white),
                                Color(0xFFF39595),
                              ),
                              buildIngredientItem(
                                "Hazelnut Syrup",
                                Icon(IngredientIcons.hazelnut,
                                    size: 25.0, color: Colors.white),
                                Color(0xFF8FC28A),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Nutrition Information",
                          style: TextStyle(
                            fontFamily: "nunito",
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF726B68),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text(
                              "Calories",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              "250",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text(
                              "Proteins",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              "10g",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text(
                              "Caffeine",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              "150mg",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: EdgeInsets.only(right: 45.0),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Color(0xFF473D3A),
                            ),
                            child: Center(
                              child: Text(
                                "Place Order",
                                style: TextStyle(
                                  fontFamily: "nunito",
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5,
                  left: 200.0,
                  child: Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/red_mug.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                    height: 300.0,
                    width: 250.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 150.0,
                              child: Text(
                                "Caramel Macchiato",
                                style: TextStyle(
                                    fontFamily: "varela",
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                  child: Icon(Icons.favorite,
                                      size: 18.0, color: Colors.red)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: 170.0,
                          child: Text(
                            "Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.",
                            style: TextStyle(
                              fontFamily: "nunito",
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xFF473D3A),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4.2",
                                      style: TextStyle(
                                        fontFamily: "nunito",
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "/5",
                                      style: TextStyle(
                                        fontFamily: "nunito",
                                        fontSize: 13.0,
                                        color: Color(0xFF7C7573),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(height: 35.0, width: 80.0),
                                    Positioned(
                                      left: 45.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.0),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/profile.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.0),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/profile.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.0),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/profile.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3.0),
                                Text(
                                  "+27 more",
                                  style: TextStyle(
                                    fontFamily: "nunito",
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: bgColor),
            child: Center(child: iconName),
          ),
          SizedBox(height: 4.0),
          Container(
            width: 80.0,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "nunito",
                  fontSize: 12.0,
                  color: Color(0xFFC2C0C0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
