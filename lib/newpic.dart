import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class NewPic extends StatefulWidget {
  @override
  _NewPicState createState() => _NewPicState();
}

class _NewPicState extends State<NewPic> {
  int loveScore = 0;
  String status = "Tap to Continue";
  String status1 = "Tap to Continue";

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          loveScore = Random().nextInt(100) + 1;
          if (loveScore >= 70) {
            status = 'you made for each other';
          } else if (loveScore >= 50 && loveScore < 70) {
            status = 'you mad in love';
          } else if (loveScore >= 30 && loveScore < 50) {
            status = 'you love each other';
          } else if (loveScore >= 10 && loveScore < 30) {
            status = 'you made a mistake';
          } else {
            status = 'you don\'t like each other';
            Alert(
              context: context,
              title: 'Love Score ($loveScore)',
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
                      loveScore = 0;
                      status = status1;
                    });
                  },
                  color: Color.fromRGBO(179, 0, 0, 1.0),
                ),
                DialogButton(
                  child: Text(
                    "Continue",
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
      child: Stack(
        children: <Widget>[
          Center(
            // child: Icon(
            //   Icons.favorite,
            //   color: Colors.red,
            //   size: 150.0,
            // ),
            child: Container(
                height: 250,
                width: 250,
                child: Image(
                  image: AssetImage('images/loveone.png'),
                )),
          ),
          Center(
            child: Text(
              loveScore.toString(),
              style: TextStyle(color: Colors.white, fontSize: 75.0),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xffA81D24),
                  ),
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}