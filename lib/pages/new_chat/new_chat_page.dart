import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/models/user.dart';

class NewChatPage extends StatefulWidget {
  final User user;
  const NewChatPage(this.user, {Key? key}) : super(key: key);

  @override
  State<NewChatPage> createState() => _NewChatPageState();
}

class _NewChatPageState extends State<NewChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Select your partner")),
        body: Container());
  }
}
