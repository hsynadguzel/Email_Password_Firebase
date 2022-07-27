import 'package:flutter/cupertino.dart';

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? password;

  UserModel(
      {@required this.uid,
      @required this.email,
      @required this.firstName,
      @required this.lastName,
      @required this.password});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      password: map['password'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
    };
  }
}
