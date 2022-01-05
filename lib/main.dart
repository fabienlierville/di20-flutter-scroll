import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scroll/pages/page_dismiss.dart';
import 'package:scroll/pages/page_grid_orientation.dart';
import 'package:scroll/pages/page_list_tile.dart';
import 'package:scroll/pages/page_list_view.dart';
import 'package:scroll/pages/page_single_child_scroll.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
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
      home: PageGridOrientation()
    );
  }
}
