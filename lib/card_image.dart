import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImg = 'assets/images/merida.jpg';

  CardImage(this.pathImg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
