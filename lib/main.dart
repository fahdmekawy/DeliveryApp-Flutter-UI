import 'package:delivery_app/screens/details_screen.dart';
import 'package:delivery_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: DetailsScreen(),
    );
    // home: Category());
  }
}
