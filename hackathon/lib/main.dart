import 'package:flutter/material.dart';
import 'package:hackathon/Pages/Homepage.dart';
//import 'package:hackathon/Pages/Homepage.dart';
import 'package:hackathon/Pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: "/si",
      initialRoute: "/signup",
      routes: {
        "/frontpage": (context) => homePage(),
        "/signup": (context) => signup(),
      },
    );
  }
}
