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
            Text("Welcome, Liam",
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A))),
            Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.cover)),
                ))
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
                      color: Color(0xFFB0AAA7))),
            ))
      ],
    )));
  }
}
