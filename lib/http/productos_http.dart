import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Users {
  // https://jsonplaceholder.typicode.com/posts
  Future<List<User>> GetUser() async {
    try {
      final response = await http.get(
          "https://jsonplaceholder.typicode.com/posts",
          headers: {'Accept': 'application/json'});

      List<User> user = ((json.decode(response.body) as List)
          .map((i) => User.fromJson(i))
          .toList());

      return user;
    } catch (Exception) {
      print(Exception);
      return null;
    }
  }
}

class User {
  final int userId;
  final int id;
  final String title;
  final String body;

  User(
      {@required this.userId,
      @required this.id,
      @required this.title,
      @required this.body});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
