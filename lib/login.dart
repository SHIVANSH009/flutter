import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String username = 'test';
  String password = 'test';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('login screen'),),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: TextField(
              onChanged: (String inputText){
                setState(() {
                  username = inputText;
                });
              },
            ),
            ),
            Expanded(
              child: TextField(
              onChanged: (String inputText){
                setState(() {
                  password = inputText;
                });
              },
            ),
            ),
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
          ],
        ),
      ),
    );
  }
}