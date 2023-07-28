
import 'package:flutter/material.dart';

class AlignItems extends StatelessWidget {
  const AlignItems({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Align'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 200,
                ),
                Container(
                  color: Colors.yellow,
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 200,
                ),
                Container(
                  color: Colors.pink,
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getListView() {
    var listView = ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.ac_unit),
          title: const Text('AC'),
          subtitle: const Text('Asian'),
          trailing: const Icon(Icons.access_alarm),
          onTap: (){
            print('u selected this!!');
          },
        ),
        ListTile(
          leading: const Icon(Icons.ac_unit),
          title: const Text('AC'),
          subtitle: const Text('Asian'),
          trailing: const Icon(Icons.access_alarm),
          onTap: (){
            print('u selected this!!');
          },
        ),
      ],
    );
    return listView;
  }

  Widget getDynamicListView() {
    var items = getListItems();
    var listView = ListView.builder(itemBuilder: (context, index){
      return ListTile(
        title: Text(items[index]),
        onTap: (){
          print('u selected ${items[index]}');
        },
      );
    });
    return listView;
  }

  List<String> getListItems() {
    return List<String>.generate(100, (counter) => 'Item $counter');
  }
}