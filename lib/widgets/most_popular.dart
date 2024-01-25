import 'package:flutter/material.dart';
import 'package:my_projects/Model/travel.dart';

class Most_popular extends StatefulWidget {
  const Most_popular({super.key});

  @override
  State<Most_popular> createState() => _Most_popularState();
}

class _Most_popularState extends State<Most_popular> {
  final most_popular = Travel.mostPopularTravel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var travel = most_popular[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.5),
                  child: Image.asset(
                    travel.img,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 15.0,
              ),
          itemCount: most_popular.length),
    );
  }
}
