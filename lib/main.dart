import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localjson_app/utility/Serialization.dart';
import 'package:flutter_localjson_app/view/HomePage.dart';

// void main()=> runApp(new MaterialApp(

  
//   theme: ThemeData(
//     primarySwatch: Colors.blue,
//   ),
//   home: new HomePage(),
// ));

void main() async
{
runApp(new MaterialApp( 
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: new HomePage(),
)); 

loadShowData();
  
}

