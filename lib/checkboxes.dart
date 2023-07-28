import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Checkboxes extends StatefulWidget{
  const Checkboxes({super.key});

  @override
  State<StatefulWidget> createState() {
    return Check();
  }
}

class Check extends State<Checkboxes> {
  String username = 'test';
  String password = 'test';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('login screen'),),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text('username: $username')
              ],
            ),
            Row(
              children: [
                Text('password: $password')
              ],
            ),
            const Row(
              children: [
                 GroupButton(
                  isRadio: false,
                  buttons: ["12:00", "13:00", "14:30", "18:00"],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}