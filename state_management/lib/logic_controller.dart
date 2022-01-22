import 'package:flutter/cupertino.dart';

class LogicController extends ChangeNotifier {
  int number = 0;
  int thirdNumber = 0;

  void count() {
    number++;
    notifyListeners();
  }

  void thirdNumberCount() {
    thirdNumber++;
    notifyListeners();
  }

  int addTwoNumber() {
    return number + thirdNumber;
  }
}
