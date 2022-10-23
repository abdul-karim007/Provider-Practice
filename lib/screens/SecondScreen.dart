import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/SecondScreenProvider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SecondProvider>(
            builder: (BuildContext context, value, Widget? child) => Text(
              "${value.title}  ${value.val}",
              style: TextStyle(fontSize: value.val),
            ),
          ),
          Consumer<SecondProvider>(
            builder: (BuildContext context, value, Widget? child) => Slider(
              divisions: 9,
              activeColor: value.defColor,
              inactiveColor: value.defColor,
              value: value.val,
              min: 10,
              max: 100,
              onChanged: (val) {
                value.onChangeMade(val);
              },
            ),
          ),
        ],
      ),
    );
  }
}
