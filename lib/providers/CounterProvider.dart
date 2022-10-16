import 'package:flutter/material.dart';


class CounterProvider with ChangeNotifier{
  int counter = 0;

  increment(){
    counter++;
    notifyListeners();
  }
  decrement(){
    counter--;
    notifyListeners();
  }
  reset(){
    counter = 0;
    notifyListeners();
  }

  navigate(context, route){
    Navigator.pushNamed(context, route);
  }
}