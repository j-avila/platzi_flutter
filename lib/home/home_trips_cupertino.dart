import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/home/home_index.dart';
import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/search/search.dart';
import 'package:flutter_application_1/detail/trip_detail.dart';

class HomeCupertino extends StatelessWidget {
  const HomeCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: Colors.indigo,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.explore), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => const HomeIndex(),
              );

            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => TripDetail(),
              );

            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => const SearchTrips(),
              );

            case 3:
              return CupertinoTabView(
                builder: (BuildContext context) => const ProfileTrips(),
              );

            default:
              return CupertinoTabView(
                  builder: (BuildContext context) => const HomeIndex());
          }
        },
      ),
    );
  }
}
