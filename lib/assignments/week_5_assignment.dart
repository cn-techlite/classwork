
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week5ClassWorkPage extends StatefulWidget {
  const Week5ClassWorkPage({super.key, required this.title});
  final String title;

  @override
  State<Week5ClassWorkPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Week5ClassWorkPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(left: 0,right: 0,top: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: (){},
              icon: const Icon(CupertinoIcons.text_alignleft,color: Colors.white,size: 24,),
            ),
            Image.asset("assets/images/img_2.png",),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black
              ),
              padding: const EdgeInsets.only(left: 20,right: 10,top: 10,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Desmond Joel",
                        style:  TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/images/img_5.png",height: 20,),
                      const Spacer(),
                      const Icon(Icons.account_box,color: Colors.white,)
                    ],
                  ),
                  const Text("Senior Product Designer",
                    style:  TextStyle(color: Colors.white,fontSize: 18),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.red,size: 15,),
                      Text("Message",
                        style:  TextStyle(color: Colors.white,fontSize: 18),
                      ),
                    ],
                  ),
                 Container(
                   margin: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 5),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text("Profile :",
                         style:  TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                       ),
                       Text("Detail-oriented also a stakeholder-oriented UI/UX designer."
                           " Over 5 years experience in doing customer-centered design. Years'"
                           " experience of working in different companies keeps me updated and "
                           "foreseen what is the current trend and what will be the future trend in"
                           " this market. Rapid prototyping are strong points.",
                         style:  TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     ],
                   ),
                 ),
                  Row(
                    children: [
                      Image.asset("assets/images/img_9.png",
                      height: 16,),
                      const SizedBox(width: 5,),
                      Image.asset("assets/images/img_8.png", height: 16,),
                      const SizedBox(width: 5,),
                      const Icon(Icons.facebook,color: Colors.blueAccent,size: 16,),
                    ],
                  ),
                  Container(
                    width: 84,
                    height: 20,
                    margin: const EdgeInsets.only(left: 0,right: 270,top: 20),
                    padding: const EdgeInsets.only(left:15,right: 5),
                    decoration: BoxDecoration(
                      color:Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15.9)
                    ),
                    child: Row(
                      children: const [
                        Text("follow",
                          style:  TextStyle(color: Colors.white,fontSize: 12),
                        ),
                        Icon(Icons.add,color: Colors.white,size: 15,),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
