import 'package:flutter/material.dart';
import 'book_list_page.dart';
import 'main_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BookListPage(),
    );
  }
}


