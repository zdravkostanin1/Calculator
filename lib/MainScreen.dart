import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String appBarTitle = 'Calculator';

  String number = '';
  String secondNumValue = '';
  int saveNum1 = 0;
  int saveNum2 = 0;
  double doubleSum = 0;
  int sum = 0;
  String myChar = '';
  int clicks = 0;
  int operatorClicks = 0;

  void determineOperatorClicks() {
    if (myChar == '+') {
      operatorClicks++;
      // Where you left off...
      // figure out why you cannot use more than 2 operators
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (sum != 0) {
          number = '';
          secondNumValue = '';
          sum = sum + saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          number = '';
          secondNumValue = '';
          sum = saveNum1 + saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
          // print(operatorClicks);
        }
      }
    } else if (myChar == '-') {
      operatorClicks++;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (sum != 0) {
          number = '';
          secondNumValue = '';
          sum = sum - saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          secondNumValue = '';
          number = '';
          sum = saveNum1 - saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '/') {
      operatorClicks += 1;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (sum != 0) {
          secondNumValue = '';
          number = '';
          doubleSum = doubleSum / saveNum2;
          number = number + doubleSum.toString();
          number = number + ' $myChar ';
        } else {
          secondNumValue = '';
          number = '';
          doubleSum = saveNum1 / saveNum2;
          number = number + doubleSum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '%') {
      operatorClicks++;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (sum != 0) {
          secondNumValue = '';
          number = '';
          sum = sum % saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          secondNumValue = '';
          number = '';
          sum = saveNum1 % saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        }
      }
    } else if (myChar == '*') {
      operatorClicks++;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (sum != 0) {
          secondNumValue = '';
          number = '';
          sum = sum * saveNum2;
          number = number + sum.toString();
          number = number + ' $myChar ';
        } else {
          secondNumValue = '';
          number = '';
          sum = saveNum1 * saveNum2;
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
          saveNum2 = num;
          // First convert to number, to represent into Text Widget
          number += saveNum2.toString();
          // save the value in a string, then to be able to parse it
          secondNumValue += saveNum2.toString();
          // Then, on a click, we parse the value to an integer,
          saveNum2 = int.parse(secondNumValue);
        } else {
          saveNum1 = num;
          number += saveNum1.toString();
          saveNum1 = int.parse(number);
        }
      }
    }
  }

  void clearTheValuesOfVariables() {
    number = '';
    saveNum1 = 0;
    saveNum2 = 0;
    sum = 0;
    myChar = '';
    secondNumValue = '';
    operatorClicks = 0;
    clicks = 0;
    doubleSum = 0;
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
                              sum = sum + saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = saveNum1 + saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
                          });
                          // print(myChar);
                        } else if (myChar == '*') {
                          setState(() {
                            if (sum != 0) {
                              sum = sum * saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = saveNum1 * saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
                          });
                        } else if (myChar == '/') {
                          setState(() {
                            if (doubleSum != 0) {
                              doubleSum = doubleSum / saveNum2;
                              number = number + ' = ';
                              number = number + doubleSum.toString();
                            } else if (doubleSum == 0) {
                              doubleSum = saveNum1 / saveNum2;
                              number = number + ' = ';
                              number = number + doubleSum.toString();
                            }
                          });
                        } else if (myChar == '-') {
                          setState(() {
                            if (sum != 0) {
                              sum = sum - saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = saveNum1 - saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            }
                          });
                        } else if (myChar == '%') {
                          setState(() {
                            if (sum != 0) {
                              sum = sum % saveNum2;
                              number = number + ' = ';
                              number = number + sum.toString();
                            } else if (sum == 0) {
                              sum = saveNum1 % saveNum2;
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
