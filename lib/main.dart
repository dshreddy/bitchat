import 'package:bitchat/screens/chat.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bitchat',
      initialRoute: ChatScreen.id,
      routes: {
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
