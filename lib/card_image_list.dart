import 'package:flutter/material.dart';
import 'package:flutter_application_1/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350.0,
        child: ListView(
            padding: const EdgeInsets.all(25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardImage('assets/images/chuspa.jpg'),
              CardImage('assets/images/chuspa2.jpg'),
              CardImage('assets/images/chuspa3.jpg'),
              CardImage('assets/images/chuspa4.jpg'),
              CardImage('assets/images/chuspa5.jpg'),
            ]));
  }
}
