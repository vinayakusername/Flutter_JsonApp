
import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_localjson_app/model/UserInfo.dart';



Future<String> loadShowData() async {
String data = await rootBundle.loadString('load_json/userDetail.json');

Map userMap = jsonDecode(data.toString());
var user = UserInfo.fromJson(userMap);

print('Howdy, ${user.name}!');
print('We sent the verification link to ${user.email}.');
}
