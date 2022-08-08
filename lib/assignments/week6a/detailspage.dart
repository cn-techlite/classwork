
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.title});
  final String title;


  @override
  State<DetailsPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color:  Colors.white,
        width: MediaQuery.of(context).size.width,
        // padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
        child: ListView(
          children: [
            Container(
              width: 110,
              height: 408,
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(0),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img_10.png")
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.0,
                        offset: Offset(0, 150.75)
                    )
                  ]
              ),
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back,color: Colors.white,)
                        )
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.share,color: Colors.white,)
                      )
                    ],
                  ),
                  const SizedBox(height: 152,),
                  const Text("Details",
                    style:  TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Container(
              height: 441,
              padding: const EdgeInsets.only(left: 10,right: 10,top: 0,),
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 15,),
                   Text(widget.title,
                    style:   const TextStyle(color: Colors.black,fontSize: 25),
                  ),
                  const SizedBox(height: 15,),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit et enim orci, "
                      "dictumst cursus lectus. Pharetra, mauris elit id vitae. Elementum bibendum sed ac feugiat"
                      " adipiscing Sociil asd.",
                    style:    TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text("Category",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                          Text("Orphanage",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Days left",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                          Text("5 days left",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Text("Target",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                          Text("\$19,000",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Raised",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                          Text("\$5,000",
                            textAlign: TextAlign.center,
                            style:   TextStyle(color: Colors.black,fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 15,bottom: 15,left: 1,right: 1),
                    margin: const EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color:  const Color.fromRGBO(235, 118, 60, 1),
                    ),
                    child: const Text("Donate",
                      textAlign: TextAlign.center,
                      style:   TextStyle(color: Colors.white,fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
