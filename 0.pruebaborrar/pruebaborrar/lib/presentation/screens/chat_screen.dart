import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:pruebaborrar/providers/chat_provider.dart';
import 'package:pruebaborrar/widgets/chat/her_message_bubble%20copy.dart';
import 'package:pruebaborrar/widgets/chat/my_message_bubble.dart';
import 'package:pruebaborrar/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn3d.iconscout.com/3d/free/preview/free-javascript-9294848-7577991.png?f=webp&h=700"),
            ),
          ),
          title: const Text(
            "JavaScript por siempre",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
          centerTitle: true,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
