import 'package:http/http.dart';

class Network{
  // ignore: non_constant_identifier_names
  static String Base="dummy.restapiexample.com/api/v1";
  static Map<String, String> headers ={"Content-Type":"application/json: charset=utf-8"};
  // ignore: non_constant_identifier_names
  static String Api_List="/employees";


  // ignore: non_constant_identifier_names
  static Future<String>Get(String api, Map<String, String> params)async{
    var uri=Uri.http(Base, api,params );
    var response=await get(uri,headers: headers);
    if(response.statusCode==429){
    return  response.body;
    }
    return null;
  }


  static Map<String,String>paramsEmpty(){
    Map<String,String> params=new Map();
    return params;
  }

  }

