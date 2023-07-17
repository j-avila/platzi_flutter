import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/backgroud_back.dart';
import 'package:flutter_application_1/common/card_image_list.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[Background('Popular'), const CardImageList()]);
  }
}
