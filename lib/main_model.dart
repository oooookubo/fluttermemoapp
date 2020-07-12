import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class BookListModel extends ChangeNotifier {
  String bookTitle = "";

  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {
      throw ("入力されていません");
    }
      Firestore.instance.collection('books').add(
          {
            'title':bookTitle,
          },
      );
    }
  }

