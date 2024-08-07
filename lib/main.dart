import 'package:flutter/material.dart';
import 'package:infinite_cabs/add_notes.dart';
import 'package:infinite_cabs/onborading_scren.dart';
import 'package:infinite_cabs/test_page.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //initializing Controller
  final PageController _pageViewController =
      PageController(initialPage: 0); // set the initial page you want to show

  @override
  void dispose() {
    // Implement dispose
    super.dispose();
    _pageViewController.dispose(); // dispose the PageController
  }

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen();
    // return const AddNotes();
  }
}
