import 'package:flutter/material.dart';
import 'package:flutter_application_1/stars_rating.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/guy.jpg";
  String name = "Varuna yasas";
  String details = "1 review 5 photos";
  String comment = "a beutifull place to visit in sri lanka";
  double rating;

  Review(this.pathImage, this.name, this.details, this.comment, this.rating,
      {super.key});

  @override
  Widget build(BuildContext context) {
    Rating starsRating = Rating(rating);
    final photo = Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(pathImage),
            )));

    final userInfo = Row(children: <Widget>[
      Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: Text(details,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7)))),
      starsRating
    ]);

    final userName = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: "Lato", fontSize: 17.0)));

    final userComment = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(comment,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 14.0,
                color: Color.fromARGB(255, 76, 76, 77))));

    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[userName, userInfo, userComment]);

    return Row(children: <Widget>[photo, userDetails]);
  }
}
