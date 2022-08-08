
import 'package:classwork/assignments/week6a/detailspage.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key, required this.title});
  final String title;


  @override
  State<DonationPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DonationPage> {

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
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("TLWC",
                              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            Text("Changing life and attitude",
                              style: TextStyle(color: Colors.black,fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.line_weight,color: Colors.black,)
                      )
                    ],
                  ),
                  const SizedBox(height: 32,),
                  const Text("Donations",
                    style:  TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 35,),
                  const Text("Ongoing Donations",
                    style:  TextStyle(color: Colors.black,fontSize: 18),
                  ),
                  const SizedBox(height: 35,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          borderRadius:BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(20),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/img_10.png")
                                )
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                               Text(widget.title,
                                style:   const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 5,),
                              const Text("5 Days left",
                                style:   TextStyle(color: Colors.black,fontSize: 12),
                              ),
                              Container(
                                margin:const EdgeInsets.only(top: 15,bottom: 15,left: 0,right: 0),
                                padding: const EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),
                                decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(20),
                                    color: const Color.fromRGBO(235, 118, 60, 1)
                                ),
                                child: const Text("Donate",
                                  textAlign: TextAlign.center,
                                  style:   TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 42,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(0),
                  color: Colors.white
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 15,),
                  const Text("Donations Choice",
                    style:   TextStyle(color: Colors.black,fontSize: 25),
                  ),
                  const SizedBox(height: 15,),
                  Column(
                      children: List.generate(10, (index) =>  Column(
                        children: [
                          const SizedBox(height: 15,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  DetailsPage(title: widget.title,)));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                  borderRadius:BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  const [
                                      SizedBox(height: 10,),
                                      Text("Orphanage Scholarship",
                                        style:   TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 15,),
                                      Text("\$80,000",
                                        style:   TextStyle(color: Colors.black,fontSize: 12),
                                      ),
                                      SizedBox(height: 10,),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    margin:const EdgeInsets.only(top: 15,bottom: 15,left: 0,right: 0),
                                    padding: const EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10),
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(20),
                                        color: const Color.fromRGBO(235, 118, 60, 1)
                                    ),
                                    child: const Text("Donate",
                                      textAlign: TextAlign.center,
                                      style:   TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),)
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
