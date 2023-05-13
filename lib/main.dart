import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginscreen.dart';
import 'bottomnavbar.dart';
import 'homescreen.dart';
import 'tester.dart';
import 'categories.dart';
void main(List<String> args) {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home_screen());
  }
}

