
import 'package:flutter/material.dart';

class Assignment10 extends StatefulWidget {
  const Assignment10({super.key, required this.title});

  final String title;

  @override
  State<Assignment10> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Assignment10> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_drop_up_outlined,size: 34,),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle_outlined,size: 34,),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/img_12.png",),
              Row(
                children: const [
                  SizedBox(width: 10,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 5,),
                  Text(
                    "In Shack Now",
                  ),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 10,),
                ],
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) =>
                 const CircleAvatar(
                   radius: 35,
                   backgroundImage: AssetImage("assets/images/img_13.png"),
                 )
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(5, (index) =>
                  Container(
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:  AssetImage("assets/images/img_15.png")
                      )
                    ),
                    child: const Center(
                      child:Text(
                      "In Shack Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,fontSize: 15),
                    ),
                    ),
                  )
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: const [
                  SizedBox(width: 10,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 5,),
                  Text(
                    "Send a token of gratitude",
                  ),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 10,),
                ],
              ),
              const SizedBox(height: 10,),
              const ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/img_22.png"),
                ),
               title: Text(
                  "We believe in helping others as much as we can, "
                      "as well as recognizing those that help the "
                      "community. Toekns help recognize the people "
                      "who go above and beyone. Send your first token",
                  style: TextStyle(color: Colors.black,fontSize: 15,
                      fontWeight: FontWeight.normal),
                ) ,
              ),
              const SizedBox(height: 10,),
              Row(
                children: const [
                  SizedBox(width: 10,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 5,),
                  Text(
                    "Latest News",
                  ),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 10,),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                children: List.generate(3, (index) =>
             ListTile(
               leading:  Container(
                width:50 ,
                 decoration: const BoxDecoration(
                     image: DecorationImage(
                         image:  AssetImage("assets/images/img_16.png")
                     )
                 ),
               ),
               title:const Text(
                 "New Opening Hours",
                 style: TextStyle(color: Colors.black,fontSize: 15,
                     fontWeight: FontWeight.bold),
               ) ,
               subtitle: const Text(
                 "We are now open until 8pm on Mondays starting next week",
                 style: TextStyle(color: Colors.black,fontSize: 15,
                     fontWeight: FontWeight.normal),
               ) ,
               trailing: const Icon(Icons.navigate_next,size: 25,),
             )
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: const [
                  SizedBox(width: 10,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 5,),
                  Text(
                    "Rooms Available Now",
                  ),
                  SizedBox(width: 5,),
                  Expanded(child: Divider(color: Colors.black,thickness: 1.5,)),
                  SizedBox(width: 10,),
                ],
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) =>
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        child: Center(
                          child: Text(
                            "10",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black,fontSize: 15),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Seats 6",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black,fontSize: 15),
                        ),
                      ),
                    ],
                  )
                  ),
                ),
              ),
              const Divider(color: Colors.black,thickness: 1.5,),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 8,),
                  Column(
                    children: [
                      Image.asset("assets/images/img_17.png",
                      height: 25,width: 25,),
                      const Text(
                        "NEWS",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/img_18.png",
                        height: 25,width: 25,),
                      const Text(
                        "EVENTS",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/img_19.png",
                        height: 25,width: 25,),
                      const Text(
                        "FOOD & DRINK\n & TOKENS",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/img_20.png",
                        height: 25,width: 25,),
                      const Text(
                        "ROOMS",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/img_21.png",
                        height: 25,width: 25,),
                      const Text(
                        "COMMUNITY",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8,),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
