import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/extensions/datetime_extensions.dart';

class ChatMessageWidget extends StatelessWidget {
  final DateTime timestamp;
  final String content;
  final bool isLocalSender;

  const ChatMessageWidget(
      {Key? key,
      required this.timestamp,
      required this.content,
      required this.isLocalSender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLocalSender
          ? const EdgeInsets.only(left: 20)
          : const EdgeInsets.only(right: 20),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor:
            isLocalSender ? Colors.lightBlue.shade300 : Colors.blue.shade100,
        leading: isLocalSender
            ? const CircleAvatar(child: Icon(Icons.person))
            : null,
        title: Text(content),
        subtitle: Text(timestamp.toNicerTime(),
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
        trailing: !isLocalSender
            ? const CircleAvatar(child: Icon(Icons.person))
            : null,
      ),
    );
  }
}
