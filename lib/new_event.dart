import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                width: 350,
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.deepPurpleAccent[700],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    prefixIcon: Icon(
                      Icons.event,
                      color: Colors.white,
                    ),
                    labelText: 'Event',
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: _textEditingController,
                ),
              ),

            Container(
              margin: EdgeInsets.all(5),
              child: Builder(
                builder: (context) {
                  return ElevatedButton(onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  }, child: Text("ADD"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[100],
                    minimumSize: Size(350,0),
                    maximumSize: Size(350,100),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )
                  )
                  );
                }
              ),
            ),
          ],
        ),
      )
    );
  }
}