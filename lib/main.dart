import 'package:bti_training2/assignments/assignment1/first_assignment.dart';
import 'package:bti_training2/assignments/assignment2/second_assignment.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondAssignment(),
      debugShowCheckedModeBanner: false,
    );
  }
}
