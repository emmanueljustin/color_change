import 'package:color_app/screens/home.dart';
import 'package:flutter/material.dart';

/// Root of the Applcation
void main() {
  /// Where it initializes the main class
  runApp(const Main());
}

/// [Main] Class and the root of the widget tree
class Main extends StatelessWidget {

  /// Constructor of the main class
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}