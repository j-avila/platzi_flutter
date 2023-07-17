import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_index.dart';
import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/search/search.dart';

import 'package:flutter_application_1/detail/trip_detail.dart';

class HomeTrips extends StatefulWidget {
  const HomeTrips({super.key});

  @override
  State<HomeTrips> createState() => _HomeTripsState();
}

class _HomeTripsState extends State<HomeTrips> {
  int indexTap = 0;

  final List<Widget> widgetSections = [
    const HomeIndex(),
    TripDetail(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore, color: Colors.indigo), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo), label: "")
            ]),
      ),
      body: widgetSections[indexTap],
    );
  }
}
