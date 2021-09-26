import 'package:flutter/material.dart';
import 'package:hearttest/newpic.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'newpic.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
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
            child: Text('Love Score'),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              onPressed: () {
                SimpleDialog(
                  title: Text('Hello World'),
                );
                // Alert(
                //   context: context,
                //   title: 'Info',
                //   desc: 'my name is dani',
                // ).show();
              },
            ),
          ],
        ),
        body: SafeArea(
          child: NewPic(),
        ),
      ),
    );
  }
}
