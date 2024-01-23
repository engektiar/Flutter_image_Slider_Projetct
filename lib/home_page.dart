import 'package:flutter/material.dart';
import 'package:my_projects/widgets/travel_ingo.dart';

class Home_apge extends StatelessWidget {
  const Home_apge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
        ),
      ]),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Travel Blogs",
              style: TextStyle(fontSize: 36.5),
            )),
        Expanded(
          flex: 2,
          child: TravelInfo(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Most Pupopafd"),
            Text("viwe all "),
          ],
        ),
        Expanded(
          child: Placeholder(),
        ),
      ]),
    );
  }
}
