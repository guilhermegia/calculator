import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button-row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  
  final void Function(String) cb;

  Keyboard(this.cb);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.bigDark(text: 'AC', cb: this.cb),
            Button.dark(text: '%', cb: this.cb),
            Button.operation(text: '/', cb: this.cb)
          ]),
          ButtonRow([
            Button(text: '7', cb: this.cb),
            Button(text: '8', cb: this.cb),
            Button(text: '9', cb: this.cb),
            Button.operation(text: 'X', cb: this.cb),
          ]),
          ButtonRow([
            Button(text: '4', cb: this.cb),
            Button(text: '5', cb: this.cb),
            Button(text: '6', cb: this.cb),
            Button.operation(text: '-', cb: this.cb),
          ]),
          ButtonRow([
            Button(text: '1', cb: this.cb),
            Button(text: '2', cb: this.cb),
            Button(text: '3', cb: this.cb),
            Button.operation(text: '+', cb: this.cb),
          ]),
          ButtonRow([
            Button.big(text: '0', cb: this.cb),
            Button(text: '.', cb: this.cb),
            Button.operation(text: '=', cb: this.cb),
          ])
        ],
      )
    );
  }
}