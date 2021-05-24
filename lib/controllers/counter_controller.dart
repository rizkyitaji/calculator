part of 'controllers.dart';

class CounterController extends GetxController {
  final _result = 0.0.obs;
  final _firstNumber = '0'.obs;
  final _secondNumber = '0'.obs;
  final _mark = ''.obs;

  double get result => this._result.value;
  set result(double value) => this._result.value = value;

  String get mark => this._mark.value;
  set mark(String value) => this._mark.value = value;

  String get firstNumber => this._firstNumber.value;
  set firstNumber(String value) => this._firstNumber.value = value;

  String get secondNumber => this._secondNumber.value;
  set secondNumber(String value) => this._secondNumber.value = value;

  void clear() {
    _result.value = 0;
    _firstNumber.value = '0';
    _secondNumber.value = '0';
    _mark.value = '';
  }

  void delete() {
    if (result != 0) {
      clear();
    } else {
      if (mark == '') {
        firstNumber = firstNumber.length == 1
            ? '0'
            : firstNumber.substring(0, firstNumber.length - 1);
      } else {
        secondNumber = secondNumber.length == 1
            ? '0'
            : secondNumber.substring(0, secondNumber.length - 1);
      }
    }
  }

  void decimalSeparator() {
    if (result != 0) {
      clear();
      firstNumber = firstNumber + '.';
    } else {
      if (!firstNumber.contains('.') && mark == '') {
        firstNumber = firstNumber + '.';
      } else if (!secondNumber.contains('.') && mark != '') {
        secondNumber = secondNumber + '.';
      }
    }
  }

  void setNumber(int value) {
    if (result != 0) {
      clear();
      firstNumber = '$value';
    } else {
      if (mark == '') {
        if (firstNumber == '0') {
          firstNumber = '$value';
        } else {
          firstNumber = firstNumber + '$value';
        }
      } else {
        if (secondNumber == '0') {
          secondNumber = '$value';
        } else {
          secondNumber = secondNumber + '$value';
        }
      }
    }
  }

  void setMark(String mark) {
    _mark.value = mark;
  }

  void percent() {
    double a = double.parse(firstNumber) / 100;
    double b = double.parse(secondNumber) / 100;

    if (mark == '') {
      firstNumber = '$a';
    } else {
      secondNumber = '$b';
    }
  }

  void getResult() {
    double a = double.parse(firstNumber);
    double b = double.parse(secondNumber);

    switch (mark) {
      case 'x':
        result = a * b;
        break;
      case '/':
        result = a / b;
        break;
      case '+':
        result = a + b;
        break;
      default:
        result = a - b;
    }
  }
}
