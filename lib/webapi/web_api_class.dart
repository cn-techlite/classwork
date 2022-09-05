
import 'package:classwork/webapi/modelservices/model_services.dart';
import 'package:flutter/material.dart';

import 'postmodel.dart';

class WebApiClass extends StatefulWidget {
  const WebApiClass({super.key, required this.title});

  final String title;

  @override
  State<WebApiClass> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WebApiClass> {

 late List<PostModel>? postModel = [];

@override
  void initState(){
  super.initState();
  getPostList();
}
 Future getPostList() async{
  postModel = await ApiServices().getPost();
}

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPostList(),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.arrow_drop_up_outlined,size: 34,),
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
                children: List.generate(postModel!.length, (index) =>  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/img_22.png"),
                      ),
                      title: Text(postModel![index].title.toString(),
                        style: const TextStyle(color: Colors.black,fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ) ,
                       subtitle:Text(postModel![index].body.toString(),
                         style: const TextStyle(color: Colors.black,fontSize: 15,
                             fontWeight: FontWeight.normal),
                       ) ,
                    ),
                  ],
                )),
              ),
            ],
          ),
        );
      }
    );
  }
}
