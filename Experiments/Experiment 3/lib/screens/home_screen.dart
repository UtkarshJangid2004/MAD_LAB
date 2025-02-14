import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Company'),
        backgroundColor: Color.fromARGB(255, 50, 150, 250), // RGB Color
      ),
      drawer: AppDrawer(), // Using the custom Drawer widget
      body: Center(
        child: Text(
          'Innovating the Future',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
