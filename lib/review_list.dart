import 'package:flutter/material.dart';
import 'package:flutter_application_1/review.dart';

class ReviewList extends StatelessWidget {
  ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/guy.jpg", "Pedro Rubio", "1 review 5 fotos",
            "mira, biiien bonito", 3),
        Review("assets/images/people.jpg", "Varuma Yasass", "2 review 2 fotos",
            "what a shit hole, thers no hookers", 1),
        Review("assets/images/ire.jpg", "ire pelusa", "1 review 12 fotos",
            "Bakana la yewrbita que venden allí", 4),
      ],
    );
  }
}
