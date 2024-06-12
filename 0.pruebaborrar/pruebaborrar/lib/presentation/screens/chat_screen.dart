import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebaborrar/domain/entities/message.dart';
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
                  "https://depor.com/resizer/itBOxXvs2Qg4LcwWjt65EyrSdiY=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/YO7NG3WYMZC4ZB24LC24QNLILQ.jpg"),
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
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];

                return (message.fromWho == FromWho.hers)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble(
                        message: message,
                      );
              },
            )),
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            )
          ],
        ),
      ),
    );
  }
}
