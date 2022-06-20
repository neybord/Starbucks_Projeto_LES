class UserModel{
  String? uid;
  String? email;
  String? firstName;
  String? secondname;

  UserModel({this.uid, this.email, this.firstName, this.secondname});

  //Recebe dados do banco
  factory UserModel.fromMap(map)
  {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondname: map['secondName'],
    );
  }

  //envia dados para o banco
  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondname,
    };
  }

}