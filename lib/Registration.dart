import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reg Page"),),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.cyanAccent,
              child: GroupButton(
                labelStyle: TextStyle(fontSize: 25, color: Colors.cyan),
                labels: [
                  "Onions",
                  "Mushrooms",
                  "Black olives",
                  "Green chillies"
                ],

                onSelected: (List itemsChecked){
                  print("items checked are $itemsChecked");
                },
              ),
            ),
            SizedBox(height: 40,),
            Container(
              color: Colors.black26,
              child: Row(
                children: [
                  RadioButtonGroup(
                    labelStyle: TextStyle(fontSize: 20, color: Colors.cyanAccent),
                    labels: [
                      "male", "female"
                    ],
                    onSelected: (String sel){
                      print("you selected $sel");
                    },
                  )
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}