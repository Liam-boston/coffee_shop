import 'package:flutter/material.dart';

import 'package:coffee_shop/presentation/ingredient_icons.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailsPageState();
  }
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 20.0,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFF3B2B7),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 20.0,
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
                  top: (MediaQuery.of(context).size.height / 2) + 25.0,
                  left: 25.0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 50.0,
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
                                Icon(IngredientIcons.water, size: 25.0, color: Colors.white),
                                Color(0xFF6FC5DA),
                              ),
                              buildIngredientItem(
                                "Ice",
                                Icon(IngredientIcons.ice_cube, size: 25.0, color: Colors.white),
                                Color(0xFFF8B870),
                              ),
                              buildIngredientItem(
                                "Brewed Espresso",
                                Icon(Icons.coffee_rounded, size: 25.0, color: Colors.white),
                                Color(0xFF615955),
                              ),
                              buildIngredientItem(
                                "Sugar",
                                Icon(IngredientIcons.sugar, size: 25.0, color: Colors.white),
                                Color(0xFFF39595),
                              ),
                              buildIngredientItem(
                                "Hazelnut Syrup",
                                Icon(IngredientIcons.hazelnut, size: 25.0, color: Colors.white),
                                Color(0xFF8FC28A),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
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
