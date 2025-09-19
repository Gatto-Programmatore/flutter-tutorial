import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  // getter di count
  int get count => _count;

  void plusOne () {
    _count++;
    notifyListeners();
  }

  void minusOne () {
    _count--;
    notifyListeners();
  }



}