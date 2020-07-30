import 'package:flutter/material.dart';
import 'dart:math';

void main() {runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text('dicee'),
      centerTitle: true,
    ),
    body: dice(),
  ),
));}

class dice extends StatefulWidget {
  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdice = 1;
  int rightdice = 1;

  void dicee(){
    setState(() {
      leftdice = Random().nextInt(6)+1;
      rightdice = Random().nextInt(6)+1;
      print('$leftdice');
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                dicee();
              },
              child: Image.asset('images/dice$leftdice.png'),
          ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                dicee();  
                print('right button');
              },
              child: Image.asset('images/dice$rightdice.png')
            ),
          )
        ],
      ),
    );
  }
}



