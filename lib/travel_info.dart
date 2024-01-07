//import 'package:day21_travel_app/model/travel.dart';
import 'package:pro_1/travel_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({Key? key}) : super(key: key);

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  final travel_list = Travel.travelInformation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: travel_list.length,
          itemBuilder: ((context, index) {
            var travel = travel_list[index];

            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Image.asset(
                      travel.img,
                      height: 500,
                      width: 350,
                      //width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    left: 15.0,
                    bottom: 25.0,
                    child: Column(
                      children: [
                        Text(
                          travel.name,
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                          //selectionColor: Colors.white10,
                        ),
                        Text(
                          travel.location,
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                      ],
                    )),
                Positioned(
                    bottom: -10,
                    right: 5,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 174, 216, 214),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.forward_10_rounded),
                    ))
              ],
            );
          })),
    );
  }
}
