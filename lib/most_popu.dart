//import 'package:day21_travel_app/model/travel.dart';
import 'package:pro_1/travel_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  final mostP = Travel.mostPopularTravelInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var travel = mostP[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      travel.img,
                      width: 125,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 10.0,
                      bottom: 20.0,
                      child: Column(
                        children: [
                          Text(
                            travel.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            travel.location,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 0.0,
              ),
          itemCount: mostP.length),
    );
  }
}
