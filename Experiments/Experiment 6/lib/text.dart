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
        child: Text("This app is in developing mode",
          style:TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color:Colors.blueGrey,
              letterSpacing: 2,
              wordSpacing: 5),
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
