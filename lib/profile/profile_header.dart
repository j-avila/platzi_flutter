import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 260.0,
        color: Colors.amber,
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: const Text("hello this is the header"));
  }
}
