import 'package:bitchat/constants.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox(
      {super.key,
        required this.sender,
        required this.text,
        required this.isMe});

  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(sender, style: kTextStyle,),
          Material(
            elevation: 5.0,
            color: Colors.green,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}