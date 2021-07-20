import 'package:flutter/material.dart';

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
                      color: Colors.white
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
}
