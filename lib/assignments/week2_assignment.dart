
import 'package:flutter/material.dart';

class Week2AssignmentPage extends StatefulWidget {
  const Week2AssignmentPage({super.key, required this.title});
  final String title;

  @override
  State<Week2AssignmentPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Week2AssignmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.white,
        body:Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 37,right: 37,top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back_ios,color: Colors.black,size: 19),
                  Text(
                    'Now Playing',
                    style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w700,
                      fontFamily: "Avenir",fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.share,color: Colors.black,size: 19,),
                ],
              ),
            ),
                  // I exported the image and copied it to my assets folder, then run the pubspec
            Container(
              padding: const EdgeInsets.only(left: 87,right: 87,top: 40),
              height: 200.0,
              //width: 200,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/images/img_1.png",
                fit: BoxFit.fill,
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 37,right: 37,top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Rev Ryan Fray',
                        style: TextStyle(fontSize: 17,color: Colors.black45,fontWeight: FontWeight.w700,
                          fontFamily: "Open sans",fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'Misconceptions',
                        style: TextStyle(fontSize: 14,color: Colors.black38,fontWeight: FontWeight.w700,
                          fontFamily: "Open sans",fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        '1hr 39min',
                        style: TextStyle(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w700,
                          fontFamily: "Open sans",fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.favorite,color: Colors.red,size: 18,),
                ],
              ),
            ),
          ],
        )
    );
  }
}
