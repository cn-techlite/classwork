
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class Assignment6Page extends StatefulWidget {
  const Assignment6Page({super.key, required this.title});
  final String title;

  @override
  State<Assignment6Page> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Assignment6Page> {

  final player = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.white,
        body:Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 37,right: 37,top: 100),
              child:Text("My Name is Chigozie Johnpaul",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.black
                  ),
            ),
            )
           ]
        )
    );
  }
}
