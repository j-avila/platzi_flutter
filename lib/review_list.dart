import 'package:flutter/material.dart';
import 'package:flutter_application_1/review.dart';

class ReviewList extends StatelessWidget {
  ReviewList({super.key});

  final reviewList = <Widget>[
    Container(
      margin: const EdgeInsets.only(top: 60, bottom: 10, left: 20),
      child: const Text("Reviews",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
    ),
    Column(children: <Widget>[
      Review("assets/images/guy.jpg", "Pedro Rubio", "1 review 5 fotos",
          "mira, biiien bonito", 3),
      Review("assets/images/people.jpg", "Varuma Yasass", "2 review 2 fotos",
          "what a shit hole, thers no hookers", 1),
      Review("assets/images/ire.jpg", "ire pelusa", "1 review 12 fotos",
          "Bakana la yewrbita que venden allí", 4),
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: reviewList);
  }
}
