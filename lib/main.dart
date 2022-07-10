import 'package:classwork/assignments/classwork.dart';
import 'package:classwork/assignments/week2_assignment.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.lightGreen,
      ),
      home: const Week2AssignmentPage(title: ''),
    );
  }
}
