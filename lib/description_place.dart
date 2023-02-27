import "package:flutter/material.dart";

class DescriptionPalce extends StatelessWidget {
  const DescriptionPalce({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: IMPLEMENT BUILD

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

    final titleStars = Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(
          top: 320.0,
          left: 20,
          right: 20,
        ),
        child: const Text(
          "Duwili Ella",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: <Widget>[
          star,
          star,
          star,
          star,
          star,
        ],
      ),
    ]);

    final description = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Color(0x00424242)),
        ));

    return Column(children: <Widget>[titleStars, description]);
  }
}
