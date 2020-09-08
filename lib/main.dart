import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text('ASK ME ANYTHING'),
        backgroundColor: Colors.blue,
      ),
      body:NextPage(),
    );
  }
  }

class NextPage  extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  int number=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed:(){
                setState(() {
                  number = Random().nextInt(5)+1;
                });
              },
              child:Image.asset('images/ball$number.png'),
            ),
          ),
        ],
      ),
    );
  }
}


