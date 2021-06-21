import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netdemo/servises/http_services.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data;


  void _apiPostList(){
    Network.Get(Network.Api_List,Network.paramsEmpty()).then((response) =>{
      print(response),
      _showResponse(response),


    });
  }

  void _showResponse(String response){
    setState(() {
       data=response;
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(data!=null ? data :"not data"),
      ),
    );
  }
}
