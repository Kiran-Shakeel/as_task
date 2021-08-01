import 'package:as_task1/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
