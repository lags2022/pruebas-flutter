import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/61/c9/a3/61c9a321f61a2650790911e828ada56d.jpg"),
              )),
          title: const Text("Mi amor ❤️"),
          centerTitle: false,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider =
        context.watch<ChatProvider>(); //esto importa el provider

    return SafeArea(
      // left: false, // esto es cuando lo rotas el celular
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

                // return (index % 2 == 0)
                //     ? const HerMessageBubble()
                //     : const MyMessageBubble();
              },
            )),
            //caja de mensaje:
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value), esta linea es la misma que esto:
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
