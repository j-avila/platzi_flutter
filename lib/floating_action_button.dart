// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  final Color? color;
  final Icon? child;

  const FloatingButton({
    this.color = const Color(0xFF11DA53),
    this.child = const Icon(Icons.favorite_border),
    Key? key,
  }) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  bool _pressed = false;

  void onpressedFav() {
    setState(() {
      _pressed = !_pressed;
    });

    const added = Text("added to favorites 👍🏽");
    const removed = Text("removed from favorites 💩");

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: _pressed ? added : removed));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: widget.color,
        mini: true,
        tooltip: "Fav",
        onPressed: onpressedFav,
        child: _pressed ? const Icon(Icons.favorite) : widget.child);
  }
}
