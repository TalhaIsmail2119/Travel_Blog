//import 'package:day21_travel_app/widgets/mospopular.dart';
import 'package:pro_1/most_popu.dart';
import 'package:pro_1/most_popu.dart';
//import 'package:day21_travel_app/widgets/travel_info.dart';
import 'package:pro_1/travel_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro_1/travel_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            )),
      ]),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Travel Blog",
              style: TextStyle(fontSize: 35),
            ),
            Expanded(flex: 7, child: TravelInfo()),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular ",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(flex: 3, child: MostPopular()),
          ],
        ),
      ),
    );
  }
}
