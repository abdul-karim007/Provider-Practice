import 'package:flutter/material.dart';
import 'package:prov_pract1/providers/CounterProvider.dart';
import 'package:prov_pract1/providers/SecondScreenProvider.dart';
import 'package:prov_pract1/screens/HomePage.dart';
import 'package:prov_pract1/screens/SecondScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => SecondProvider())

      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
          initialRoute: '/',
        routes: {
      '/': (context) => MyHomePage(),
          '/second': (context)=> SecondScreen()
        },
      ),
    );
  }
}

