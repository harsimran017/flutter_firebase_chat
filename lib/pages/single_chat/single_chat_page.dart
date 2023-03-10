import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/models/chat.dart';

class SingleChatPage extends StatefulWidget {
  final Chat chat;
  const SingleChatPage(this.chat, {Key? key}) : super(key: key);

  @override
  State<SingleChatPage> createState() => _SingleChatPageState();
}

class _SingleChatPageState extends State<SingleChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.chat.chatName)),
        body: ListView.builder(
            itemCount: widget.chat.messages.length,
            itemBuilder: (context, index) {
              return Text(widget.chat.messages[index].content);
            }));
  }
}
