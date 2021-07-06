import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  String number = '';
  String secondNumValue = '';
  int saveNum1 = 0;
  int saveNum2 = 0;
  double doubleSum;
  int sum;
  String myChar = '';
  int clicks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'My First Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: 450.0,
                height: 100.0,
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        number,
                        style: TextStyle(
                          fontSize: 44.0,
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          myChar = '+';
                          number = number + ' + ';
                        });
                        print(myChar);
                      },
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            myChar = '-';
                            number = number + ' - ';
                          });
                        });
                      },
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          number = '';
                          saveNum1 = 0;
                          saveNum2 = 0;
                          sum = 0;
                          myChar = '';
                          secondNumValue = '';
                        });
                      },
                      child: Text(
                        '⌫',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          myChar = '*';
                          number = number + ' * ';
                        });
                      },
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          myChar = '/';
                          number = number + ' / ';
                        });
                      },
                      child: Text(
                        '/',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          setState(() {
                            myChar = '%';
                            number = number + ' % ';
                          });
                        });
                      },
                      child: Text(
                        '%',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 7;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // THIS IS WHERE YOU LEFT OFF
                          clicks++;
                          for (int i = 0; i <= clicks; i++) {
                            if (i == 1) {
                              saveNum1 = 8;
                              number += saveNum1.toString();
                              saveNum1 = int.parse(number);
                            }
                          }
                          // // We first save the value
                          // saveNum2 = 8;
                          // // First convert to number, to represent into Text Widget
                          // number += saveNum2.toString();
                          // // save the value in a string, then to be able to parse it
                          // secondNumValue += saveNum2.toString();
                          // // Then, on a click, we parse the value to an integer,
                          // saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 9;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 4;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 5;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 6;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (myChar == '+') {
                            // We first save the value
                            saveNum2 = 1;
                            // Convert it to a String to represent into Text Widget
                            number += saveNum2.toString();
                            secondNumValue += saveNum2.toString();
                            // Then, on a click, we parse the value to an integer,
                            // which if more than 1 click for example is 11
                            saveNum2 = int.parse(secondNumValue);
                          } else {
                            // We first save the value
                            saveNum1 = 1;
                            // Convert it to a String to represent into Text Widget
                            number += saveNum1.toString();
                            // Then, on a click, we parse the value to an integer,
                            // which if more than 1 click for example is 11
                            saveNum1 = int.parse(number);
                          }
                        });
                      },
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 2;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                          print(saveNum2);
                        });
                      },
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          // We first save the value
                          saveNum2 = 3;
                          // First convert to number, to represent into Text Widget
                          number += saveNum2.toString();
                          // save the value in a string, then to be able to parse it
                          secondNumValue += saveNum2.toString();
                          // Then, on a click, we parse the value to an integer,
                          saveNum2 = int.parse(secondNumValue);
                        });
                      },
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        if (myChar == '+') {
                          setState(() {
                            sum = saveNum1 + saveNum2;
                            number = number + ' = ';
                            number = number + sum.toString();
                          });
                          // print(myChar);
                        } else if (myChar == '*') {
                          setState(() {
                            sum = saveNum1 * saveNum2;
                            number = number + ' = ';
                            number = number + sum.toString();
                          });
                        } else if (myChar == '/') {
                          setState(() {
                            doubleSum = saveNum1 / saveNum2;
                            number = number + ' = ';
                            number = number + doubleSum.toString();
                          });
                        } else if (myChar == '-') {
                          setState(() {
                            sum = saveNum1 - saveNum2;
                            number = number + ' = ';
                            number = number + sum.toString();
                          });
                        }
                      },
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
