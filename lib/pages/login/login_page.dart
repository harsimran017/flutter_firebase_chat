import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/models/user.dart';
import 'package:flutter_firebase_chat/pages/chat_overview/chat_overview_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Login to chat'),
            ElevatedButton(
                child: const Text("Login"),
                onPressed: () async {
                  var user = User("1", "me", true);
                  await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatOverviewPage(user)));
                })
          ],
        ),
      ),
    );
  }
}
