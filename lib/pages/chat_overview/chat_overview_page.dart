import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/models/chat.dart';
import 'package:flutter_firebase_chat/models/message.dart';
import 'package:flutter_firebase_chat/models/user.dart';
import 'package:flutter_firebase_chat/pages/new_chat/new_chat_page.dart';
import 'package:flutter_firebase_chat/pages/single_chat/single_chat_page.dart';

class ChatOverviewPage extends StatefulWidget {
  final User user;

  const ChatOverviewPage(this.user, {Key? key}) : super(key: key);

  @override
  State<ChatOverviewPage> createState() => _ChatOverviewPageState();
}

class _ChatOverviewPageState extends State<ChatOverviewPage> {
  final List<Chat> _chats = <Chat>[];

  @override
  void initState() {
    super.initState();

    _chats.add(Chat(
        <User>[widget.user, User("2", "him", false)], "12chat", <Message>[]));
    _chats.add(Chat(
        <User>[widget.user, User("3", "her", false)], "13chat", <Message>[]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Your chats")),
        body: ListView.builder(
            itemCount: _chats.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(_chats[index].chatName),
                  subtitle: Text(_chats[index].messages.isEmpty
                      ? " - "
                      : _chats[index].messages.first.timestamp.toString()),
                  onTap: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleChatPage(_chats[index])));
                  });
            }),
        floatingActionButton: FloatingActionButton.extended(
            label: const Text("new chat"),
            icon: const Icon(Icons.add),
            onPressed: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NewChatPage(widget.user)));
            }));
  }
}
