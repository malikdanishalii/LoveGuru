import 'package:flutter/material.dart';
import 'package:hearttest/newpic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Color(0xffA81D24),
          // backgroundColor: Color(0xff8a171a),
          title: Center(
            child: Text('Heart'),
          ),
        ),
        body: NewPic(),
      ),
    );
  }
}
