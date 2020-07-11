import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteAppHome extends StatefulWidget {
  NoteAppHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NoteAppHomeState createState() => _NoteAppHomeState();
}

class _NoteAppHomeState extends State<NoteAppHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: Text('new page'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
    );
  }
}