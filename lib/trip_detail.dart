import 'package:flutter/material.dart';
import 'package:flutter_application_1/description_place.dart';
import 'package:flutter_application_1/header_app.dart';
import 'package:flutter_application_1/review_list.dart';

class TripDetail extends StatelessWidget {
  String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.🔥 jojojo";
  TripDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ]),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              DescriptionPalce("Chuspa", 3, descriptionDummy),
              ReviewList()
            ],
          ),
          const HeaderApp()
        ],
      ),
    );
  }
}
