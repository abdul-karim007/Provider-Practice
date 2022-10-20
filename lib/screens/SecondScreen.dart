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
              "${value.title}  ${value.min}",
              style: TextStyle(fontSize: value.min),
            ),
          ),
          Consumer<SecondProvider>(
            builder: (BuildContext context, value, Widget? child) => Slider(
              onChangeEnd: (val) {
                value.onChangeMade(val);
              },
              onChangeStart: (val) {
                value.onChangeMade(val);
              },
              divisions: value.div,
              value: value.min,
              min: value.min,
              max: value.max,
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
