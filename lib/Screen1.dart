import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {

  String FirstName = "";
  Screen1({required this.FirstName});

  @override
  State<Screen1> createState() => _Screen1State(FirstName);
}

class _Screen1State extends State<Screen1> {
  String FirstName;
  _Screen1State(this.FirstName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent,title: Text("SCREEN 1 " + FirstName),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}