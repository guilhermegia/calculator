import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  
  final String text;
  final bool big;
  final Color color;

  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    @required this.cb
  });

  Button.big({
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
    @required this.cb
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
    @required this.cb
  });

  Button.dark({
    @required this.text,
    this.big = false,
    this.color = DARK,
    @required this.cb
  });

  Button.bigDark({
    @required this.text,
    this.big = true,
    this.color = DARK,
    @required this.cb
  });
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: RaisedButton(
          color: this.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w300
            ),
          ),
          onPressed: () => cb(this.text),
        ),
      ),
    );
  }
}