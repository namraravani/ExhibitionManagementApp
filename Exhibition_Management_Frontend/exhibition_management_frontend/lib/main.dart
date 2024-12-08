import 'package:flutter/material.dart';
import 'package:exhibition_management_frontend/View/HomePage/HomePage.dart';
import 'package:exhibition_management_frontend/View/ExhibitionDetails/ExhibitionDetailsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exhibition Management',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set the primary theme color
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: Colors.blue, // Set app bar color
          elevation: 4, // Optional, to set shadow for app bar
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor:
              Colors.black, // Set background for input fields (like search bar)
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, // Set color for icons (like search, settings)
        ),
      ),
    );
  }
}
