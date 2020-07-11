import 'package:flutter/material.dart';
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
      home: NoteAppHome(title: 'Flutter Memo App'),
    );
  }
}


