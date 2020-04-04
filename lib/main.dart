import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:golubmi/homePage.dart';

void main() => runApp(mainApp());

class mainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Golu_BMI",
      home: homePage(),
    );
  }
}
