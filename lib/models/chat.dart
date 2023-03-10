import 'package:flutter_firebase_chat/models/message.dart';
import 'package:flutter_firebase_chat/models/user.dart';

class Chat {
  final List<User> users;
  final String id;
  final List<Message> messages;

  String get chatName => users.firstWhere((user) => !user.local).name;

  Chat(this.users, this.id, this.messages);
}
