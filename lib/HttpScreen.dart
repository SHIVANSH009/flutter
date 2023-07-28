//Http call with parsing data
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'UserData.dart';

class HttpScreen extends StatefulWidget {
  const HttpScreen({Key? key}) : super(key: key);

  @override
  State<HttpScreen> createState() => _HttpScreenState();
}

class _HttpScreenState extends State<HttpScreen> {

  Future getData() async {
    var response = await http.get(
        Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    // print(jsonData);

    List<UserData> users = [];
    for (var i in jsonData) {
      UserData ud = UserData(i["id"], i['name'], i['username']);
      users.add(ud);
    }
    print("Number of records are ${users.length}");


    return users;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HttpScreen"),),
      body: Container(
        color: Colors.cyanAccent,
      ),
    );
  }
}

