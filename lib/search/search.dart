import 'package:flutter/material.dart';

class SearchTrips extends StatefulWidget {
  const SearchTrips({super.key});

  @override
  State<SearchTrips> createState() => _SearchTripsState();
}

class _SearchTripsState extends State<SearchTrips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('This is the search section'),
    );
  }
}
