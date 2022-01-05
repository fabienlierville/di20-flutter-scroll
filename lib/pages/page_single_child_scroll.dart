import 'package:flutter/material.dart';

class PageSingleChildScroll extends StatelessWidget {
  const PageSingleChildScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Child ScrollView"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 100, color: Colors.red,),
            Container(height: 100, color: Colors.yellow,),
            Container(height: 100, color: Colors.blue,),
            Container(height: 100, color: Colors.black,),
            Container(height: 100, color: Colors.green,),
            Container(height: 100, color: Colors.red,),
            Container(height: 100, color: Colors.yellow,),
            Container(height: 100, color: Colors.blue,),
            Container(height: 100, color: Colors.black,),
            Container(height: 100, color: Colors.green,),
            Container(height: 100, color: Colors.red,),
            Container(height: 100, color: Colors.yellow,),
            Container(height: 100, color: Colors.blue,),
            Container(height: 100, color: Colors.black,),
            Container(height: 100, color: Colors.green,),
            Container(height: 100, color: Colors.red,),
            Container(height: 100, color: Colors.yellow,),
            Container(height: 100, color: Colors.blue,),
            Container(height: 100, color: Colors.black,),
            Container(height: 100, color: Colors.green,),
            Container(height: 100, color: Colors.red,),
            Container(height: 100, color: Colors.yellow,),
            Container(height: 100, color: Colors.blue,),
            Container(height: 100, color: Colors.black,),
            Container(height: 100, color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
