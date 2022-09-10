import 'package:classwork/webapi/constants.dart';
import 'package:classwork/webapi/models/ProductModel.dart';
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

 Future<List<ProductModel>> getProduct()async{
   var url = Uri.parse(ApiConstants.postUrl);
   var response = await http.get(url);
   try{

     if (response.statusCode==200){
       List<ProductModel> model =  productModelFromJson(response.body);
       return model;
     }
   }
   catch(e){
     if (kDebugMode) {
       print(e.toString());
     }
   }
   return productModelFromJson(response.body);
 }


}

