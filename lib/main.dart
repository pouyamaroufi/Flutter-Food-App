import 'package:flutter/material.dart';
import 'package:foodapp/Screen/pizaa_screen.dart';
import 'package:foodapp/Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: const PizzaScreen(),
    );
  }
}
