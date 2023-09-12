import 'package:bti_training2/assignments/first_excercise.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstExc(),
      debugShowCheckedModeBanner: false,
    );
  }
}
