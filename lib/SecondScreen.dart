import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({ Key? key }) : super(key: key);

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
          child: Column(
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
              Row(
                children: [
                  TextButton(
                      child: Text('Alert Box Practice'),
                      onPressed: (){
                        _showDialog(context);
                      },
                  ),
                ],
              ),
                ],
              ),
          ),
        ),
      );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Alert!!"),
        content: const Text("You are awesome!"),
        actions: <Widget>[
          ElevatedButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


