import 'package:flutter/material.dart';
import 'package:planet/screen/HomePage.dart';
import 'package:planet/screen/details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "details_page": (context) => const DetailsPage(),
      },
    ),
  );
}
