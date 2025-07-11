import 'package:flutter/material.dart';

const double logoHeight = 100;
const double fieldSize = 300;
const Color textColor = Colors.green;
const Color backgroundColor = Colors.black;
const Color buttonColor = Colors.orangeAccent;
const double gap = 20;

const kTextStyle = TextStyle(
  color: textColor,
  fontWeight: FontWeight.bold,
);

var kMessageContainerDecoration = BoxDecoration(
  border: Border.all(color: Colors.grey, width: 2.0)
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(color: Colors.grey),
  border: InputBorder.none,
);

const kSendButtonTextStyle = TextStyle(
  color: textColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Text Field Decoration',
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: buttonColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: buttonColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);