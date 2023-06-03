import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  String buttonText = 'click me!';

  MainButton(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("navigating")))
            },
        child: Container(
            width: 200,
            height: 50,
            margin: const EdgeInsets.only(top: 20.0, left: 20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 29, 69, 178),
                    Color.fromARGB(255, 126, 119, 204),
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                )),
            child: Center(
              child: Text(buttonText,
                  style: const TextStyle(
                      fontSize: 18.0, fontFamily: 'Lato', color: Colors.white)),
            )));
  }
}
