import 'package:calculator_flutter/MainScreen.dart';
import 'package:flutter/material.dart';

class NumbersButton extends StatelessWidget {
  // final Function onPressed;
  final Widget child;
  final int num;

  NumbersButton({this.child, this.num});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: child,
      onPressed: () {},
    );
  }
}
