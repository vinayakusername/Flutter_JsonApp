import 'dart:convert';


class UserInfo {
  final int id;
  final String name;
  final int age;
  final String email;
  final String gender;


  UserInfo(this.id,this.name,this.age, this.email,this.gender);

   UserInfo.fromJson(Map<String, dynamic> json)
      : id=json['id'],
        name = json['name'],
        age=json['age'],
        email = json['email'],
        gender=json['gender'];
  

  // Map<String, dynamic> toJson() =>
  //   {
  //     'id': id,
  //     'name': name,
  //     'age': age,
  //     'email': email,
  //     'gender':gender
  //   };

 
}