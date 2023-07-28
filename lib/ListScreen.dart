
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({ Key? key }) : super(key: key);

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
          child: getDynamicListView(),
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