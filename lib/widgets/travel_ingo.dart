import 'package:flutter/material.dart';
import 'package:my_projects/Model/travel.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({super.key});

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  final travel_list = Travel.travelInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: travel_list.length,
          itemBuilder: (context, index) {
            var travel = travel_list[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      travel.img,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 40,
                    left: 25,
                    child: Column(
                      children: [
                        Text(
                          travel.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          travel.location,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
                Positioned(
                  right: 10,
                  bottom: 0,
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.arrow_forward_outlined),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
