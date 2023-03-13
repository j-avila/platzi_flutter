import 'package:flutter/material.dart';
import 'package:flutter_application_1/review.dart';

class ReviewList extends StatelessWidget {
  ReviewList({super.key});

  Review review = Review('1', '2', '3', '4');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [review]));
  }
}
