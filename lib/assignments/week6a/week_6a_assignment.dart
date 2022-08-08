

import 'package:classwork/assignments/week6a/homepage.dart';
import 'package:flutter/material.dart';

class Week6AAssignmentPage extends StatefulWidget {
  const Week6AAssignmentPage({super.key, required this.title});
  final String title;

  @override
  State<Week6AAssignmentPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Week6AAssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: const Color.fromRGBO(101, 123, 134, 1),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            const SizedBox(height:202,),
            const Text("TLWC",
              style:   TextStyle(color: Colors.white,fontSize: 20),
            ),

            const SizedBox(height: 8,),
            const Text("Changing Life and Attitude",
              style:   TextStyle(color: Colors.white,fontSize: 15),
            ),
            const SizedBox(height: 185,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    const HomePage(title: "title")));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 15,bottom: 15,left: 100,right: 100),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: const Text("Get Started",
                  textAlign: TextAlign.center,
                  style:   TextStyle(color: Colors.black,fontSize: 15),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
