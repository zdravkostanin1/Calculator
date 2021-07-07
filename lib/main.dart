import 'package:flutter/material.dart';
import 'MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'main_screen': (context) => MainScreen(),
      },
      initialRoute: 'main_screen',
    );
  }
}
