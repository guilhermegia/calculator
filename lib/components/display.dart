import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {

  final String text;

  Display(this.text);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                this.text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w100
                )
              ),
            ),
          ],
        )
      ),
    );
  }

}