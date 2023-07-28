import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'ListScreen.dart';
import 'alignItems.dart';
import 'login.dart';
import 'checkboxes.dart';
import 'HttpScreen.dart';
import 'HttpDemo.dart';
import 'Screen0.dart';
import 'Screen2.dart';
import 'Map.dart';

void main() {
  runApp(
      // MyScafoldApp()
    RowColumn(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "app",
      home: Material(
        child: Center(
          child: Text('hello world from material!',
            style: TextStyle(
              backgroundColor: Colors.black12,
                color: Colors.greenAccent,
                fontSize: 25
            ),
          ),
        ),
      ),
    );
  }
}

class MyScafoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          backgroundColor: Colors.lightBlue,
      ),
        body: Container(
          color: Colors.lightBlue,
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: const Column(
            children: [
              Row(
                children: [
                  Text('Row 1')
                ],
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Expanded(child: Text('Welcome to Flutter training'))
                ],
              ),
              Row(),
            ],
          ),
        ),
      ),
      );
  }
}

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        "/myscreen" : (context) => const Screen2(),
      },
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

