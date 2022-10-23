import 'package:flutter/material.dart';

class SecondProvider with ChangeNotifier {
  final String title = 'Second Screen';
  double val = 10;
  var defColor = Colors.black;
  List<Color> colors = [
    Colors.black,
    Colors.black12,
    Colors.black26,
    Colors.black38,
    Colors.black45,
    Colors.black54,
    Colors.black87,
    Colors.grey,
    Colors.grey.shade50,
    Colors.grey.shade100,
    Colors.grey.shade200,
  ];

  onChangeMade(double value) {
    val = value;
    defColor = colors[val ~/ 10];
    notifyListeners();
  }
}
