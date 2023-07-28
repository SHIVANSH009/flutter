
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*void main() => runApp(MyApp());*/

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}*/

//Creating a class user to store the data;
class User {
  final int id;
  final int userId;
  final String title;
  final String body;

  User({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url = "https://jsonplaceholder.typicode.com/posts";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);
    print(response);

    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
          id: singleUser["id"],
          userId: singleUser["userId"],
          title: singleUser["title"],
          body: singleUser["body"]);

      //Adding user to the list.
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Http Get Request."),
          leading: Icon(
            Icons.get_app,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: FutureBuilder(
            future: getRequest(),
            builder: (BuildContext ctx, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return ListView.builder(

                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) => Card(
                      margin: EdgeInsets.all(10),
                      color: Colors.black26,
                      elevation: 5,
                      child: ListTile(
                        title: Text(snapshot.data[index].title, style: TextStyle(fontSize: 20, color: Colors.redAccent),),
                        subtitle: Text(snapshot.data[index].body,style: TextStyle(fontSize: 15, color: Colors.blue),),
                        contentPadding: EdgeInsets.only(bottom: 20.0),
                      ),
                    )
                );
              }
            },
          ),
        ),
      ),
    );
  }
}