import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String appBarTitle = 'Calculator';

  String numbersField = '';
  String secondNumValue = '';
  int num1 = 0;
  int num2 = 0;
  double doubleSum = 0;
  int sum = 0;
  String selectedOperator = '';
  int clicks = 0;
  int operatorClicks = 0;
  String multiplyOperator = '';
  String plusOperator = '';
  String minusOperator = '';
  String moduloOperator = '';
  String divisionOperator = '';

  int representNumber1 = 0;
  int convertedFromDoubleNumber;
  double lastDigitOfNum = 0;
  String numbersFieldNewValue = '';
  int eraseButtonClickCount = 0;

  void removeLastCharacter(int numbersToDelete) {
    if ((numbersField != null) && (numbersField.length > 0)) {
      secondNumValue =
          secondNumValue.substring(0, secondNumValue.length - numbersToDelete);
      numbersFieldNewValue =
          numbersField.substring(0, numbersField.length - numbersToDelete);
      numbersField = numbersFieldNewValue;
      num2 = int.parse(secondNumValue);
    }
  }

  void eraseLeftDigit() {
    eraseButtonClickCount++;
    if (selectedOperator == '') {
      if (convertedFromDoubleNumber == 0) {
        numbersField = '';
        convertedFromDoubleNumber = 0;
      } else {
        representNumber1 = num1;
        representNumber1 = num1 % 10;
        lastDigitOfNum = num1 / 10;
        convertedFromDoubleNumber = lastDigitOfNum.toInt();
        num1 = convertedFromDoubleNumber;
        numbersField = convertedFromDoubleNumber.toString();
        eraseButtonClickCount = 0;
      }
    } else if (selectedOperator != '') {
      removeLastCharacter(eraseButtonClickCount);
      eraseButtonClickCount = 0;
    }
  }

  void determineOperatorClicks() {
    if (selectedOperator == '+') {
      operatorClicks++;
      plusOperator = selectedOperator;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (multiplyOperator == '*') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 * num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          multiplyOperator = '';
        } else if (minusOperator == '-') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 - num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          minusOperator = '';
        } else if (moduloOperator == '%') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 % num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          moduloOperator = '';
        } else if (divisionOperator == '÷') {
          secondNumValue = '';
          numbersField = '';
          doubleSum = num1 / num2;
          sum = doubleSum.toInt();
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          divisionOperator = '';
        } else if (sum != 0) {
          numbersField = '';
          secondNumValue = '';
          sum = sum + num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        } else {
          numbersField = '';
          secondNumValue = '';
          sum = num1 + num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        }
      }
    } else if (selectedOperator == '-') {
      operatorClicks++;
      minusOperator = selectedOperator;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (multiplyOperator == '*') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 * num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          multiplyOperator = '';
        } else if (plusOperator == '+') {
          numbersField = '';
          secondNumValue = '';
          sum = num1 + num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          plusOperator = '';
        } else if (moduloOperator == '%') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 % num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          moduloOperator = '';
        } else if (divisionOperator == '÷') {
          secondNumValue = '';
          numbersField = '';
          doubleSum = num1 / num2;
          sum = doubleSum.toInt();
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          divisionOperator = '';
        } else if (sum != 0) {
          numbersField = '';
          secondNumValue = '';
          sum = sum - num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        } else {
          secondNumValue = '';
          numbersField = '';
          sum = num1 - num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        }
      }
    } else if (selectedOperator == '÷') {
      operatorClicks++;
      divisionOperator = selectedOperator;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (multiplyOperator == '*') {
          secondNumValue = '';
          numbersField = '';
          doubleSum = num1 * num2.toDouble();
          numbersField = numbersField + doubleSum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          multiplyOperator = '';
        } else if (plusOperator == '+') {
          numbersField = '';
          secondNumValue = '';
          sum = num1 + num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          plusOperator = '';
        } else if (minusOperator == '-') {
          numbersField = '';
          secondNumValue = '';
          doubleSum = num1 - num2.toDouble();
          numbersField = numbersField + doubleSum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          minusOperator = '';
        } else if (moduloOperator == '%') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 % num2;
          doubleSum = sum.toDouble();
          numbersField = numbersField + doubleSum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          moduloOperator = '';
        } else if (doubleSum != 0 || sum != 0) {
          if (sum != 0) {
            secondNumValue = '';
            numbersField = '';
            doubleSum = sum / num2;
            sum = doubleSum.toInt();
            numbersField = numbersField + sum.toString();
            numbersField = numbersField + ' $selectedOperator ';
          } else {
            secondNumValue = '';
            numbersField = '';
            doubleSum = doubleSum / num2;
            numbersField = numbersField + doubleSum.toString();
            numbersField = numbersField + ' $selectedOperator ';
          }
        } else {
          secondNumValue = '';
          numbersField = '';
          doubleSum = num1 / num2;
          numbersField = numbersField + doubleSum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        }
      }
    } else if (selectedOperator == '%') {
      operatorClicks++;
      moduloOperator = selectedOperator;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (multiplyOperator == '*') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 * num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          multiplyOperator = '';
        } else if (plusOperator == '+') {
          numbersField = '';
          secondNumValue = '';
          sum = num1 + num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          plusOperator = '';
        } else if (minusOperator == '-') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 - num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          minusOperator = '';
        } else if (divisionOperator == '÷') {
          secondNumValue = '';
          numbersField = '';
          doubleSum = num1 / num2;
          numbersField = numbersField + doubleSum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          divisionOperator = '';
        } else if (sum != 0) {
          secondNumValue = '';
          numbersField = '';
          sum = sum % num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        } else {
          secondNumValue = '';
          numbersField = '';
          sum = num1 % num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        }
      }
    } else if (selectedOperator == '*') {
      operatorClicks++;
      multiplyOperator = selectedOperator;
      if (operatorClicks == 2 || operatorClicks > 2) {
        if (plusOperator == '+') {
          numbersField = '';
          secondNumValue = '';
          sum = num1 + num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          plusOperator = '';
        } else if (minusOperator == '-') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 - num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          minusOperator = '';
        } else if (moduloOperator == '%') {
          secondNumValue = '';
          numbersField = '';
          sum = num1 % num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          moduloOperator = '';
        } else if (divisionOperator == '÷') {
          secondNumValue = '';
          numbersField = '';
          doubleSum = num1 / num2;
          numbersField = numbersField + doubleSum.toString();
          numbersField = numbersField + ' $selectedOperator ';
          divisionOperator = '';
        } else if (sum != 0 || doubleSum != 0) {
          if (doubleSum != 0) {
            secondNumValue = '';
            numbersField = '';
            doubleSum = doubleSum * num2;
            numbersField = numbersField + doubleSum.toString();
            numbersField = numbersField + ' $selectedOperator ';
          } else {
            secondNumValue = '';
            numbersField = '';
            sum = sum * num2;
            numbersField = numbersField + sum.toString();
            numbersField = numbersField + ' $selectedOperator ';
          }
        } else {
          secondNumValue = '';
          numbersField = '';
          sum = num1 * num2;
          numbersField = numbersField + sum.toString();
          numbersField = numbersField + ' $selectedOperator ';
        }
      }
    }
  }

  void determineNumberPlace(int num) {
    for (int i = 0; i <= clicks; i++) {
      if (i == 1) {
        if (selectedOperator == '+' ||
            selectedOperator == '*' ||
            selectedOperator == '÷' ||
            selectedOperator == '-' ||
            selectedOperator == '%') {
          num2 = num;
          // First convert to number, to represent into Text Widget
          numbersField += num2.toString();
          // save the value in a string, then to be able to parse it
          secondNumValue += num2.toString();
          // Then, on a click, we parse the value to an integer,
          num2 = int.parse(secondNumValue);
        } else {
          num1 = num;
          numbersField += num1.toString();
          num1 = int.parse(numbersField);
        }
      }
    }
  }

  void clearTheValuesOfVariables() {
    numbersField = '';
    num1 = 0;
    num2 = 0;
    sum = 0;
    selectedOperator = '';
    secondNumValue = '';
    operatorClicks = 0;
    clicks = 0;
    doubleSum = 0;
    minusOperator = '';
    plusOperator = '';
    multiplyOperator = '';
    moduloOperator = '';
    divisionOperator = '';
    numbersFieldNewValue = '';
    eraseButtonClickCount = 0;
    convertedFromDoubleNumber = 0;
    representNumber1 = 0;
    lastDigitOfNum = 0;
  }

  void determineOperatorSign(String operator) {
    selectedOperator = operator;
    numbersField = numbersField + ' $selectedOperator ';
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
                          numbersField,
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
                          eraseLeftDigit();
                        });
                      },
                      child: Text(
                        '⌫',
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
                        'C',
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
                  SizedBox(
                    width: 50.0,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          determineOperatorSign('÷');
                          determineOperatorClicks();
                        });
                      },
                      child: Text(
                        '÷',
                        style: TextStyle(fontSize: 33.0, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
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
                  SizedBox(
                    width: 50.0,
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
                  SizedBox(
                    width: 50.0,
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
                  SizedBox(
                    width: 50.0,
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
                  SizedBox(
                    width: 50.0,
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
                        if (selectedOperator == '+') {
                          if (num1 != 0 && num2 != 0) {
                            setState(() {
                              if (sum != 0) {
                                sum = sum + num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              } else if (sum == 0) {
                                sum = num1 + num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              }
                            });
                          }
                        } else if (selectedOperator == '*') {
                          if (num1 != 0 && num2 != 0) {
                            setState(() {
                              if (sum != 0) {
                                sum = sum * num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              } else if (doubleSum != 0) {
                                doubleSum = doubleSum * num2;
                                numbersField = numbersField + ' = ';
                                numbersField =
                                    numbersField + doubleSum.toString();
                              } else if (sum == 0) {
                                sum = num1 * num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              }
                            });
                          }
                        } else if (selectedOperator == '÷') {
                          if (num1 != 0 && num2 != 0) {
                            setState(() {
                              if (doubleSum != 0) {
                                doubleSum = doubleSum / num2;
                                numbersField = numbersField + ' = ';
                                numbersField =
                                    numbersField + doubleSum.toString();
                              } else if (doubleSum == 0) {
                                doubleSum = num1 / num2;
                                numbersField = numbersField + ' = ';
                                numbersField =
                                    numbersField + doubleSum.toString();
                              }
                            });
                          }
                        } else if (selectedOperator == '-') {
                          if (num1 != 0 && num2 != 0) {
                            setState(() {
                              if (sum != 0) {
                                sum = sum - num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              } else if (sum == 0) {
                                sum = num1 - num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              }
                            });
                          }
                        } else if (selectedOperator == '%') {
                          if (num1 != 0 && num2 != 0) {
                            setState(() {
                              if (sum != 0) {
                                sum = sum % num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              } else if (sum == 0) {
                                sum = num1 % num2;
                                numbersField = numbersField + ' = ';
                                numbersField = numbersField + sum.toString();
                              }
                            });
                          }
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
