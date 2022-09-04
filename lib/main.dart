import 'package:flutter/material.dart';

import 'assignment2/assignment_1.dart';



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
      home: const Assignment10(title: '',),
    );
  }
}

