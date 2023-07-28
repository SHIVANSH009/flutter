import 'package:flutter/material.dart';

import 'Screen1.dart';
import 'Screen2.dart';

class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  State<Screen0> createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,title: Text("SCREEN 0"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            /*   Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return Screen1(FirstName: 'Ansari');
                })*/
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context){
                  //return Screen1(FirstName: "ANSARI");
                  return Screen2();
                })
            );

            // Navigator.pushNamed(context, "/myscreen");
          },
          child: const Text("Go to Screen2"),
        ),

      ),
    );
  }
}