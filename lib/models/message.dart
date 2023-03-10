import 'package:flutter_firebase_chat/models/user.dart';

class Message {
  final String id;
  final User sender;
  final String content;
  final DateTime timestamp;

  Message(this.id, this.sender, this.content, this.timestamp);
}
