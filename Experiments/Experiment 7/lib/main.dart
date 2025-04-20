import 'package:flutter/material.dart';
import 'Profile.dart'; // Import the ProfilePage from another file

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Gallery App',
      home: ProfilePage(),
    );
  }
}
