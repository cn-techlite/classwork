
import 'package:classwork/assignments/week6a/donationpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

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
           color: const Color.fromRGBO(101, 123, 134, 1),
           padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
           child: Column(
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
                           style: TextStyle(color: Colors.white,fontSize: 20),
                         ),
                         Text("Changing life and attitude",
                           style: TextStyle(color: Colors.white,fontSize: 15),
                         ),
                       ],
                     ),
                   ),
                   const Spacer(),
                   IconButton(
                       onPressed: (){},
                       icon: const Icon(Icons.line_weight,color: Colors.white,)
                   )
                 ],
               ),
               const SizedBox(height: 2,),
               Container(
                 padding: const EdgeInsets.only(top: 15,bottom: 15,),
                 decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(20),
                   color: const Color.fromRGBO(161, 185, 198, 1),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Container(
                         padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                         margin: const EdgeInsets.only(right: 10),
                         decoration: BoxDecoration(
                           borderRadius:BorderRadius.circular(20),
                           color: Colors.white,
                         ),
                         child: const   Icon(Icons.search,color: Colors.black,)),
                   ],
                 ),
               ),
               const SizedBox(height: 35,),
               const Text("Categories",
                 style:  TextStyle(color: Colors.white,fontSize: 18),
               ),
               const SizedBox(height: 35,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [

                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:  [
                       Container(
                           padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                           margin: const EdgeInsets.only(right: 10),
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.circular(20),
                             color: Colors.white,
                           ),
                           child: const   Icon(Icons.calendar_month,color:Color.fromRGBO(235, 118, 60, 1),)),
                       const Text("Events",
                         style:  TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:  [
                       Container(
                           padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                           margin: const EdgeInsets.only(right: 10),
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.circular(20),
                             color: Colors.white,
                           ),
                           child: const   Icon(Icons.business,color: Color.fromRGBO(235, 118, 60, 1))),
                       const Text("Ministries",
                         style:  TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:  [
                       Container(
                           padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                           margin: const EdgeInsets.only(right: 10),
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.circular(20),
                             color: Colors.white,
                           ),
                           child: const   Icon(Icons.business_center,color: Color.fromRGBO(235, 118, 60, 1))),
                       const Text("Activities",
                         style:  TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:  [
                       Container(
                           padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                           margin: const EdgeInsets.only(right: 10),
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.circular(20),
                             color: Colors.white,
                           ),
                           child: const   Icon(Icons.more,color: Color.fromRGBO(235, 118, 60, 1))),
                       const Text("More",
                         style:  TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     ],
                   ),
                 ],
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
                  const Text("Ongoing Donations",
                    style:  const TextStyle(color: Colors.black,fontSize: 25),
                  ),
                  const SizedBox(height: 15,),
                  Column(
                    children: List.generate(10, (index) =>  Column(
                      children: [
                        const SizedBox(height: 15,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                const DonationPage(title: "Orphanage Scholarship")));
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
                                    const Text("Orphanage Scholarship",
                                      style:   TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
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
