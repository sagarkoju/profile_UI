import 'package:flutter/material.dart';

class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final String text;

  const User(
      {@required this.imagePath,
      @required this.name,
      @required this.email,
      @required this.text,
      @required this.about});
}
