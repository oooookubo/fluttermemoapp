import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note_app/book_list_page.dart';

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
        title: Text(widget.title),
      ),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookList()),
            );
            // Add your onPressed code here!
          },
          label: Text('new page'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
    );
  }
}