import 'package:event_scheduler_app/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              itemCount: _list.length,
                itemBuilder: ((context, index) {
                  return Container(
                    width: 350,
                    color: Colors.white,
                    margin: EdgeInsets.all(20),

                    child: ListTile(
                      title: Center(child: _list[index]),
                    ),
                  );
                })
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(newText));
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.deepPurpleAccent[700],
            );
          }
        ),
      ),
    );
  }
}