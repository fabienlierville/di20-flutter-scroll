import 'package:flutter/material.dart';
import 'package:scroll/pages/page_list_view.dart';
import 'package:scroll/pages/page_single_child_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageListView()
    );
  }
}
