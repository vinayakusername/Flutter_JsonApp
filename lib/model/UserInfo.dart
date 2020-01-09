
class UserInfo {
  final int id;
  final String name;
  final int age;
  final String email;
  final String gender;


  UserInfo(this.id,this.name,this.age, this.email,this.gender);

  //A User.fromJson() constructor, for constructing a new User instance from a map structure
   UserInfo.fromJson(Map<String, dynamic> json)
      : id=json['id'],
        name = json['name'],
        age=json['age'],
        email = json['email'],
        gender=json['gender'];
  
   //A toJson() method, which converts a User instance into a map.
   
  // Map<String, dynamic> toJson() =>
  //   {
  //     'id': id,
  //     'name': name,
  //     'age': age,
  //     'email': email,
  //     'gender':gender
  //   };

 
}