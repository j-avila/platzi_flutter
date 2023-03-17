import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  double rating = 0;

  Rating(this.rating, {super.key});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(
        top: 3.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color.fromARGB(255, 215, 218, 44),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 3.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color.fromARGB(255, 215, 218, 44),
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half_outlined,
        color: Color.fromARGB(255, 215, 218, 44),
      ),
    );

    final startRating = Row(
        children: List.generate(5, (index) {
      if (index < rating) {
        return star;
      } else {
        return starBorder;
      }
    }));

    //returning the widget
    return Column(children: <Widget>[startRating]);
  }
}
