import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note_app/main_model.dart';
import 'package:provider/provider.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter memo app"),
      ),
      body: Consumer<BookListModel>(
        builder: (context,model,child){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (text){
                    model.bookTitle = text;
                  },
                ),
                RaisedButton(
                  child: Text("追加する"),
                  onPressed: () async {
                    await model.addBookToFirebase();
                  },
                )
              ],
            ),

          );
        },
      )

    );
  }
}