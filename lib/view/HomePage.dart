import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:flutter_localjson_app/model/UserInfo.dart';



class HomePage extends StatefulWidget{

  @override

  HomePageState createState()=> new HomePageState();
}

class HomePageState extends State<HomePage>{


  
  List data;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Load JSON Data"),
      ),

      body:Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle
            .of(context)
            .loadString("load_json/userDetail.json"),
             
            builder: (context,snapshot){
              var userData = jsonDecode(snapshot.data.toString());
             
              
              return  ListView.builder(
               // itemCount: userData == null? 0:userData.length,
                itemBuilder: (BuildContext context,int index){
                  return Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text("Name:"+userData[index]['name']),
                                Text("Email:"+userData[index]['email']),
                                Text("Gender:"+userData[index]['gender']),
                              ],
                            ),
                  );
                },
              );
            },
          ),
        ),

      ),
    );
  }

 
}