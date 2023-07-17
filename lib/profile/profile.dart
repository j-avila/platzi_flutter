import 'package:flutter/material.dart';

class ProfileTrips extends StatefulWidget {
  const ProfileTrips({super.key});

  @override
  State<ProfileTrips> createState() => _ProfileTripsState();
}

class _ProfileTripsState extends State<ProfileTrips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('This is the profile section'),
    );
  }
}
