
import 'package:flutter/material.dart';

class ClassWorkPage extends StatefulWidget {
  const ClassWorkPage({super.key, required this.title});
  final String title;

  @override
  State<ClassWorkPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ClassWorkPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xFF48B42F),
        body:Column(
          children: [
            const Padding(padding: EdgeInsets.only(left: 59,right: 335,top: 75),
            child: Icon(Icons.arrow_back,color: Colors.white,),),
             Padding(padding: const EdgeInsets.only(left: 150,right: 148,top: 120),
              child: Image.asset("assets/images/img.png",height: 144.0,width: 116,),),
            const Padding(padding: EdgeInsets.only(left: 134,right: 133,top: 35),
              child: Text(
                'Get Notified',
                style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w700,
                  fontFamily: "Open sans",fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 74,right: 75,top: 23),
              child: Text(
                'Receive notifications when you get celebrated',
                style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400,
                  fontFamily: "Open sans",fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 120,right: 120,top: 45),
              child:  GestureDetector(
                child:   Container(
                    alignment: Alignment.center,
                    height: 58,
                    width: 210,
                    decoration: BoxDecoration(
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border:
                      Border.all(width: 1.0, color: Colors.grey),

                    ),
                    child:    const Padding(
                      padding: EdgeInsets.only(left: 20,right: 19,top: 8,bottom: 6),
                      child:    Text("Get Started",
                        style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w700,
                          fontFamily: "Open sans",fontStyle: FontStyle.normal,
                        ),
                      ),
                    )
                ),
              ),
            ),
          ],
        )
    );
  }
}
