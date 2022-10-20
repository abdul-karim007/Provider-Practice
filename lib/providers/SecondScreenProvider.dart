import 'package:flutter/material.dart';

class SecondProvider with ChangeNotifier{

  final String title = 'Second Screen';
  double min = 10;
  double max = 100;
  int div = 100;
  onChangeMade(double val){
    min = val;
    notifyListeners();
  }
}