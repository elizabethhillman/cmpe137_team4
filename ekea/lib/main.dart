import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Center(
        child: Row(
          children: <Widget>[
            Text('one'),
            Text('two'),
            // Text('hello three')
          ],
        )
      ),
    )
  );
}