import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_note_app/book.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = '';

  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {
      throw ('タイトルを入力してください');
    }

    FirebaseFirestore.instance.collection('books').add(
      {
        'title': bookTitle,
        'createdAt': Timestamp.now(),
      },
    );
  }

  Future updateBook(Book book) async {
    final document =
        FirebaseFirestore.instance.collection("books").doc(book.documentID);
    await document.update(
      {
        'title': bookTitle,
        'updateAt': Timestamp.now(),
      },
    );
  }
}
