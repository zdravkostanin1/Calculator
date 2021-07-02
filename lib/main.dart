import 'package:flutter/material.dart';
import 'MainScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
      // home: CalculatorButton(),
      initialRoute: 'main_screen',
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('main_screen');
          },
          child: Text(
            'Calculator',
            style: TextStyle(fontSize: 33.0, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
