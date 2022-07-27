
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
        title: const Text("Logo",
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
        centerTitle: true,
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
              padding: const EdgeInsets.only(left: 10,right: 10,top: 64),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage("assets/images/boximage.png")
                )
              ),
            ),
            Row(
              children: [
                Expanded(child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.tealAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_2.png"),
                      ),
                      const   SizedBox(height: 20,),
                     const Text("Assigned\nPackage",
                       style:  TextStyle(color: Colors.black,fontSize: 18),
                     ),
                    ],
                  ),
                )),
                Expanded(child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.tealAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_3.png"),
                      ),
                      const   SizedBox(height: 20,),
                      const Text("Packages",
                        style:  TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.tealAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_4.png"),
                      ),
                      const   SizedBox(height: 20,),
                      const Text("Earnings",
                        style:  TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),
                )),
                Expanded(child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.tealAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset("assets/images/img_5.png"),
                      ),
                      const   SizedBox(height: 20,),
                      const Text("Logs",
                        style:  TextStyle(color: Colors.black,fontSize: 18),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ],
        )
    );
  }
}
