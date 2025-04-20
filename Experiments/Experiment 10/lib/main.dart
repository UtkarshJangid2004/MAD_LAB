import 'package:flutter/material.dart';
import 'image_resize.dart'; // Import the image picker functionality

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaPickerPage(),
    );
  }
}
