import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('books').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError)
            return Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting: return  Text('Loading...');
            default:
              return  ListView(
                children: snapshot.data.documents.map((DocumentSnapshot document) {
                  return  ListTile(
                    title: Text(document["title"]),
                  );
                }).toList(),
              );
          }
        },
      ),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookPage()),
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