// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import '../common/button.dart';

class DescriptionPalce extends StatelessWidget {
  String placeName;
  int rating;
  String placeDescription;

  DescriptionPalce(this.placeName, this.rating, this.placeDescription,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color.fromARGB(255, 215, 218, 44),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
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

    final titleStars = Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(
          top: 320.0,
          left: 20,
          right: 20,
        ),
        child: Text(
          placeName,
          style: const TextStyle(
            fontFamily: "LatoBold",
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
          children: List.generate(5, (index) {
        if (index < rating) {
          return star;
        } else {
          return starBorder;
        }
      })),
    ]);

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        placeDescription,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 90, 87, 86)),
      ),
    );

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleStars,
          description,
          MainButton("Navigate"),
        ]);
  }
}
