import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/SecondScreenProvider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text(Provider.of<SecondProvider>(context).title),),
    );
  }
}
