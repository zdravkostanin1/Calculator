import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String appBarTitle = 'Calculator';

  String number = '';
  String secondNumValue = '';
  int num1 = 0;
  int num2 = 0;
  double doubleSum = 0;
  int sum = 0;
  String myChar = '';
  int clicks = 0;
  int operatorClicks = 0;

  String theLastOperator = '';
  String plusOperator = '';
  String minusOperator = '';
  String moduloOperator = '';
  String divisionOperator = '';

  void determineOperatorClicks() {
    if (myChar == '+') {
      operatorClicks++;
      plusOperator = myChar;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (theLastOperator == '*') {
          secondNumValue = '';
          number = '';
          sum = num1 * num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          theLastOperator = '';
        } else if (minusOperator == '-') {
          secondNumValue = '';
          number = '';
          sum = num1 - num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          minusOperator = '';
        } else if (moduloOperator == '%') {
          secondNumValue = '';
          number = '';
          sum = num1 % num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          moduloOperator = '';
        } else if (divisionOperator == '/') {
          secondNumValue = '';
          number = '';
          doubleSum = num1 / num2;
          sum = doubleSum.toInt();
          number = number + sum.toString();
          number = number + ' $myChar ';
          divisionOperator = '';
        } else if (sum != 0) {
          number = '';
          secondNumValue = '';
          sum = sum + num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          number = '';
          secondNumValue = '';
          sum = num1 + num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '-') {
      operatorClicks++;
      minusOperator = myChar;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (theLastOperator == '*') {
          secondNumValue = '';
          number = '';
          sum = num1 * num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          theLastOperator = '';
        } else if (plusOperator == '+') {
          number = '';
          secondNumValue = '';
          sum = num1 + num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          plusOperator = '';
        } else if (sum != 0) {
          number = '';
          secondNumValue = '';
          sum = sum - num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          secondNumValue = '';
          number = '';
          sum = num1 - num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '/') {
      operatorClicks++;
      divisionOperator = myChar;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (theLastOperator == '*') {
          secondNumValue = '';
          number = '';
          doubleSum = num1 * num2.toDouble();
          number = number + doubleSum.toString();
          number = number + ' $myChar ';
          theLastOperator = '';
        } else if (plusOperator == '+') {
          number = '';
          secondNumValue = '';
          sum = num1 + num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          plusOperator = '';
        } else if (doubleSum != 0 || sum != 0) {
          if (sum != 0) {
            secondNumValue = '';
            number = '';
            doubleSum = sum / num2;
            sum = doubleSum.toInt();
            number = number + sum.toString();
            number = number + ' $myChar ';
          } else {
            secondNumValue = '';
            number = '';
            doubleSum = doubleSum / num2;
            number = number + doubleSum.toString();
            number = number + ' $myChar ';
          }
        } else {
          secondNumValue = '';
          number = '';
          doubleSum = num1 / num2;
          number = number + doubleSum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '%') {
      operatorClicks++;
      moduloOperator = myChar;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (theLastOperator == '*') {
          secondNumValue = '';
          number = '';
          sum = num1 * num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          theLastOperator = '';
        } else if (plusOperator == '+') {
          number = '';
          secondNumValue = '';
          sum = num1 + num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          plusOperator = '';
        } else if (sum != 0) {
          secondNumValue = '';
          number = '';
          sum = sum % num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          secondNumValue = '';
          number = '';
          sum = num1 % num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '*') {
      operatorClicks++;
      theLastOperator = myChar;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (plusOperator == '+') {
          number = '';
          secondNumValue = '';
          sum = num1 + num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          plusOperator = '';
        } else if (minusOperator == '-') {
          secondNumValue = '';
          number = '';
          sum = num1 - num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          minusOperator = '';
        } else if (moduloOperator == '%') {
          secondNumValue = '';
          number = '';
          sum = num1 % num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          moduloOperator = '';
        } else if (divisionOperator == '/') {
          secondNumValue = '';
          number = '';
          doubleSum = num1 / num2;
          number = number + doubleSum.toString();
          number = number + ' $myChar ';
          divisionOperator = '';
        } else if (sum != 0 || doubleSum != 0) {
          if (doubleSum != 0) {
            secondNumValue = '';
            number = '';
            doubleSum = doubleSum * num2;
            number = number + doubleSum.toString();
            number = number + ' $myChar ';
          } else {
            secondNumValue = '';
            number = '';
            sum = sum * num2;
            number = number + sum.toString();
            number = number + ' $myChar ';
          }
        } else {
          secondNumValue = '';
          number = '';
          sum = num1 * num2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        }
      }
    }
  }

  void determineNumberPlace(int num) {
    for (int i = 0; i <= clicks; i++) {
      if (i == 1) {
        if (myChar == '+' ||
            myChar == '*' ||
            myChar == '/' ||
            myChar == '-' ||
            myChar == '%') {
          num2 = num;
          // First convert to number, to represent into Text Widget
          number += num2.toString();
          // save the value in a string, then to be able to parse it
          secondNumValue += num2.toString();
          // Then, on a click, we parse the value to an integer,
          num2 = int.parse(secondNumValue);
        } else {
          num1 = num;
          number += num1.toString();
          num1 = int.parse(number);
        }
      }
    }
  }

  void clearTheValuesOfVariables() {
    number = '';
    num1 = 0;
    num2 = 0;
    sum = 0;
    myChar = '';
    secondNumValue = '';
    operatorClicks = 0;
    clicks = 0;
    doubleSum = 0;
    minusOperator = '';
    plusOperator = '';
    theLastOperator = '';
    moduloOperator = '';
    divisionOperator = '';
  }

  void determineOperatorSign(String operator) {
    myChar = operator;
    number = number + ' $myChar ';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            appBarTitle,
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
                      Expanded(
                        child: Text(
                          number,
                          style: TextStyle(
                            fontSize: 44.0,
                          ),
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
                          determineOperatorSign('+');
                          determineOperatorClicks();
                        });
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
                            determineOperatorSign('-');
                            determineOperatorClicks();
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
                          clearTheValuesOfVariables();
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
                          determineOperatorSign('*');
                          determineOperatorClicks();
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
                          determineOperatorSign('/');
                          determineOperatorClicks();
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
                            determineOperatorSign('%');
                            determineOperatorClicks();
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
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                      onPressed: () {
                        setState(() {
                          clicks++;
                          determineNumberPlace(7);
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          clicks++;
                          determineNumberPlace(8);
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
                          clicks++;
                          determineNumberPlace(9);
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
                          clicks++;
                          determineNumberPlace(4);
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
                          clicks++;
                          determineNumberPlace(5);
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
                          clicks++;
                          determineNumberPlace(6);
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
                          clicks++;
                          determineNumberPlace(1);
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
                          clicks++;
                          determineNumberPlace(2);
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
                          clicks++;
                          determineNumberPlace(3);
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
                      onPressed: () {
                        setState(() {
                          clicks++;
                          determineNumberPlace(0);
                        });
                      },
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
                            if (sum != 0) {
                              sum = sum + num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = num1 + num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
                          });
                        } else if (myChar == '*') {
                          setState(() {
                            if (sum != 0) {
                              sum = sum * num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (doubleSum != 0) {
                              doubleSum = doubleSum * num2;
                              number = number + ' = ';
                              number = number + doubleSum.toString();
                            } else if (sum == 0) {
                              sum = num1 * num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
                          });
                        } else if (myChar == '/') {
                          setState(() {
                            if (doubleSum != 0) {
                              doubleSum = doubleSum / num2;
                              number = number + ' = ';
                              number = number + doubleSum.toString();
                            } else if (doubleSum == 0) {
                              doubleSum = num1 / num2;
                              number = number + ' = ';
                              number = number + doubleSum.toString();
                            }
                          });
                        } else if (myChar == '-') {
                          setState(() {
                            if (sum != 0) {
                              sum = sum - num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = num1 - num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
                          });
                        } else if (myChar == '%') {
                          setState(() {
                            if (sum != 0) {
                              sum = sum % num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = num1 % num2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
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
