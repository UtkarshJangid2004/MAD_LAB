import 'package:flutter/material.dart';
import 'package:demo_one/Space.dart';
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
      body: GridView.count(
          crossAxisCount: 3,
        crossAxisSpacing: 20,
        children: [Card(
          elevation: 50,

          child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){
                  Navigator.push((context), MaterialPageRoute(builder:(context)=>Space()));
                  
                },

                  label:Text("View"), icon: Icon(Icons.open_in_browser),)

            ]
          ),
        ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Expanded(child: Image.asset("images/a1.png")),
                Text("XIP"),
                ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

              ]
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),
          Card(
            elevation: 50,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[
                  Expanded(child: Image.asset("images/a1.png")),
                  Text("XIP"),
                  ElevatedButton.icon(onPressed:(){}, label:Text("ADD"), icon: Icon(Icons.access_alarm),)

                ]
            ),
          ),


      ]
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


