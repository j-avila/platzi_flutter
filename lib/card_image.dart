// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'floating_action_button.dart';

class CardImage extends StatelessWidget {
  String pathImg = 'assets/images/placeholder.png';

  CardImage(this.pathImg, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: 350.0,
        width: 250.0,
        margin: const EdgeInsets.only(top: 80.0, left: 20.0),
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImg)),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.8,
                  offset: Offset(0.0, 7.0))
            ]));

    return Stack(
        alignment: const Alignment(0.9, 1.1),
        children: <Widget>[card, const FloatingButton()]);
  }
}
