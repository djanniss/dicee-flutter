import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  var leftDieNumber = 3;
  int rightDieNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(  
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDieNumber = 5;
                });
              },
              child: Image.asset('images/dice$leftDieNumber.png'),
            ),
          ), 
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDieNumber = 6;
                  });
                },
                child: Image.asset('images/dice$rightDieNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}