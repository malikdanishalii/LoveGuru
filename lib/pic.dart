import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Pic extends StatefulWidget {
  @override
  _PicState createState() => _PicState();
}

class _PicState extends State<Pic> {
  int loveScore = 0;
  String status = 'Tab the button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Heart'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/h2.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: FlatButton(
          onPressed: () {
            setState(() {
              loveScore = Random().nextInt(100) + 1;
              if (loveScore >= 70) {
                status = 'you made for each other';
                // print('you made for each other');
              }
              if (loveScore >= 50 && loveScore <= 70) {
                status = 'you mad in love';
                // print('you mad in love');
              }
              if (loveScore >= 50 && loveScore <= 10) {
                status = 'you love each other';
                // print('you love each other');
              }
              if (loveScore <= 10) {
                status = 'you don\'t like each other';
                // print('you don\'t like each other');
                Alert(
                  context: context,
                  title: 'Love Score',
                  desc: status,
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Reset",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          status = 'Tab the button';
                          loveScore = 0;
                        });
                      },
                      color: Color.fromRGBO(179, 0, 0, 1.0),
                    ),
                    DialogButton(
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(116, 116, 191, 1.0),
                        Color.fromRGBO(52, 138, 199, 1.0)
                      ]),
                    )
                  ],
                ).show();
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 180.0,
                  ),
                  child: Text(
                    loveScore.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
              Center(
                child: Text(
                  status,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
