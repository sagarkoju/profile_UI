import 'package:flutter/material.dart';

import 'Page/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(dividerColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
