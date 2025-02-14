import 'package:flutter/material.dart';
class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Images talks louder than word"),
          backgroundColor: Colors.red[400],
          centerTitle: true,
        ),
        body:Card(
          child: Column(
            children: [
              Image.asset("images/a2.jpg"),
            Text(
              "Hello everyone",
               style: TextStyle(
                    fontSize: 25,

               ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      onPressed:(){
                        Navigator.pop(context);

                      },
                  icon:Icon(Icons.exit_to_app),
                    label: Text("Exit"),
                  ),
                  ElevatedButton.icon(onPressed: (){},
                      icon:Icon(Icons.download_done_outlined),
                  label: Text("Download"),
                  )
                ],

              )
            ],
          ),
        ),

    );
  }
}
