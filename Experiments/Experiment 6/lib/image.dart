import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:Home(),

  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Images talks louder than word"),
        backgroundColor:Colors.red[400],
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          //image:NetworkImage("https://www.cuchd.in/includes/assets/images/cu-logo-small.webp"),
          image:AssetImage('images/a1.png'),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          print("YESSS");

        },
        child: Icon(Icons.assistant_navigation),
      ),
    );
  }
}
