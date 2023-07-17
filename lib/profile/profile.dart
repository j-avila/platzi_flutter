import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/profile_header.dart';

class ProfileTrips extends StatefulWidget {
  const ProfileTrips({super.key});

  @override
  State<ProfileTrips> createState() => _ProfileTripsState();
}

class _ProfileTripsState extends State<ProfileTrips> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderProfile(),
        Container(
            alignment: Alignment.center,
            child: Text(
                '//TODO: crear un litView para meter todo el contenido el cual sera escroleable'))
      ],
    );
  }
}


//TODO:  crear un litView para meter todo el contenido el cual sera escroleable