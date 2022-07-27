
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week4ClassWorkPage extends StatefulWidget {
  const Week4ClassWorkPage({super.key, required this.title});
  final String title;

  @override
  State<Week4ClassWorkPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Week4ClassWorkPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("LOGO",
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(CupertinoIcons.text_alignleft,color: Colors.black,size: 24,),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications)
          )
        ],
      ),
        backgroundColor:  Colors.white,
        body:Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
              padding:const EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(209, 229, 254, 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 42,),
                  const Text("Lorem ipsum\nlorem",
                    style: TextStyle(color: Colors.black,fontSize: 24),
                  ),
                 Align(
                   alignment: Alignment.centerRight,
                   child:  Image.asset("assets/images/boximage.png",
                   height: 170,width: 170,),
                 )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                Expanded(child: Container(
                  padding: const EdgeInsets.only(left: 18,right: 10,top: 10),
                  margin:const EdgeInsets.only(left: 10,right: 10,),
                  height: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(15, 113, 115, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 0,right: 10,top: 34,bottom: 39),
                        padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),
                        height:60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 127, 80, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_4.png",height: 44,width: 40,),
                      ),
                      const Text("Assigned\nPackage",
                        style:  TextStyle(color: Colors.white,fontSize: 18),
                      ),
                    ],
                  ),
                )),

                Expanded(child: Container(
                  padding: const EdgeInsets.only(left: 18,right: 10,top: 10),
                  margin:const EdgeInsets.only(left: 10,right: 10,),
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(242, 242, 242, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 0,right: 10,top: 34,bottom: 39),
                        padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),
                        height:60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 127, 80, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_7.png",height: 44,width: 40,),
                      ),
                      const Text("Packages",
                        style:  TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            const   SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container(
                  padding: const EdgeInsets.only(left: 18,right: 10,top: 10),
                  margin:const EdgeInsets.only(left: 10,right: 10,),
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(242, 242, 242, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 0,right: 10,top: 34,bottom: 39),
                        padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),
                        height:60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 127, 80, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_3.png",height: 44,width: 40,),
                      ),
                      const Text("Earnings",
                        style:  TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),
                )),
                Expanded(child: Container(
                  padding: const EdgeInsets.only(left: 18,right: 10,top: 10),
                  margin:const EdgeInsets.only(left: 10,right: 10,),
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(242, 242, 242, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 0,right: 10,top: 34,bottom: 39),
                        padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),
                        height:60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 127, 80, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_6.png",height: 44,width: 40,),
                      ),
                      const Text("Logs",
                        style:  TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ],
        )
    );
  }
}
