import 'package:bitchat/widgets/MessageBox.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static String id = "chat_screen";

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final textController = TextEditingController();
  String? typedMessage;
  List<Widget> messages = [
    MessageBox(sender: "@anony101", text: "Hii", isMe: false),
    MessageBox(sender: "@anony102", text: "Hii", isMe: false),
    MessageBox(sender: "@anony103", text: "Hii", isMe: false),
    MessageBox(sender: "@anony104", text: "Hii", isMe: true),
    MessageBox(sender: "@anony105", text: "Hii", isMe: false),
    MessageBox(sender: "@anony106", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
    MessageBox(sender: "@anony107", text: "Hii", isMe: false),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BITCHAT 0.0", style: kTextStyle,),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 5,
        shadowColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10),
                  children: messages,
                )
            ),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: textController,
                      onChanged: (value) {
                        typedMessage = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Implement send functionality.
                      textController.clear();
                    },
                    child: const Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}