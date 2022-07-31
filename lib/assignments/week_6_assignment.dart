
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week6AssignmentPage extends StatefulWidget {
  const Week6AssignmentPage({super.key, required this.title});
  final String title;

  @override
  State<Week6AssignmentPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Week6AssignmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: const Text("LOGO",
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
        centerTitle: true,
        leading: Container(
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
          ),
          child:  Image.asset("assets/images/img_10.png",
            height: 38,
            width: 38.41,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,color: Colors.black,)
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
        child: ListView(
          children: [
           Row(
             children: [
               Container(
                 decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(10),
                 ),
                 child:  Image.asset("assets/images/img_10.png",
                   height: 62,
                   width: 61.41,
                 ),
               ),
               const SizedBox(width: 5,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text("Alice Smith",
                     style:  TextStyle(color: Colors.black,fontSize: 18),
                   ),
                   Text("20 April at 4:20 PM",
                     style:  TextStyle(color: Colors.black,fontSize: 18),
                   ),
                 ],
               ),
               const Spacer(),
               IconButton(
                   onPressed: (){},
                   icon: const Icon(Icons.more_vert,color: Colors.black,)
               )
             ],
           ),
            const SizedBox(height: 2,),
            const Text("@Samuel_Balogun We’re interested in your ideas and would be glad to build"
                " something bigger out of it. Share your ideas about features/design and we’ll "
                "bring them on to our full case. #Celebut",
              style:   TextStyle(color: Colors.black,fontSize: 15),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.handshake,color: Colors.yellow,),
                    SizedBox(height: 2,),
                    Text("247",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.comment,color: Colors.black,),
                    SizedBox(height: 2,),
                    Text("57",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(CupertinoIcons.share,color: Colors.black,)
                )
              ],
            ),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:  Image.asset("assets/images/img_10.png",
                    height: 62,
                    width: 61.41,
                  ),
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Alice Smith",
                      style:  TextStyle(color: Colors.black,fontSize: 18),
                    ),
                    Text("20 April at 4:20 PM",
                      style:  TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.more_vert,color: Colors.black,)
                )
              ],
            ),
            const SizedBox(height: 2,),
            const Text("@Samuel_Balogun We’re interested in your ideas and would be glad to build"
                " something bigger out of it. Share your ideas about features/design and we’ll "
                "bring them on to our full case. #Celebut",
              style:   TextStyle(color: Colors.black,fontSize: 15),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
              ),
              child:  Image.asset("assets/images/img_10.png",
                height: 365,
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.handshake,color: Colors.yellow,),
                    SizedBox(height: 2,),
                    Text("247",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.comment,color: Colors.black,),
                    SizedBox(height: 2,),
                    Text("57",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(CupertinoIcons.share,color: Colors.black,)
                )
              ],
            ),

            const SizedBox(height: 12,),
            const Text("Celebration around you",
              style:   TextStyle(color: Colors.black,fontSize: 18),
            ),
            const SizedBox(height: 12,),

            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        child:  Image.asset("assets/images/img_10.png",
                          height: 62,
                          width: 61.41,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Jane George",
                            style:  TextStyle(color: Colors.black,fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                 const Center(child: Text("Birthday Celebration",
                   style:  TextStyle(color: Colors.yellow,fontSize: 18),
                 ),),
                  const Center(child: Text("We’re interested in your ideas and would be glad to build something bigger out of it.",
                    textAlign: TextAlign.center,
                    style:  TextStyle(color: Colors.black,fontSize: 15),
                  ),),
                  const SizedBox(height: 12,),
                ],
              ),
            ),


            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:  Image.asset("assets/images/img_10.png",
                    height: 62,
                    width: 61.41,
                  ),
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Alice Smith",
                      style:  TextStyle(color: Colors.black,fontSize: 18),
                    ),
                    Text("20 April at 4:20 PM",
                      style:  TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.more_vert,color: Colors.black,)
                )
              ],
            ),
            const SizedBox(height: 2,),
            Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
              ),
              child:  Image.asset("assets/images/img_11.png",
                height: 365,
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.handshake,color: Colors.yellow,),
                    SizedBox(height: 2,),
                    Text("247",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.comment,color: Colors.black,),
                    SizedBox(height: 2,),
                    Text("57",
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(CupertinoIcons.share,color: Colors.black,)
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
