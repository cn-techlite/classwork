import 'package:classwork/webapi/model_class.dart';
import 'package:classwork/webapi/postmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class ApiServices{

 Future <List<PostModel>?> getPost()async{
    try{
var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.postUrl);
var response = await http.get(url);
if (response.statusCode==200){
 List<PostModel> model =  postModelFromJson(response.body);
 return model;
}
    }
    catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}