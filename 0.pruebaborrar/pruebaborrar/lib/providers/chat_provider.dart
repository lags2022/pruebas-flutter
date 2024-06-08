import 'package:flutter/material.dart';
import 'package:pruebaborrar/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "fucking javascript", fromWho: FromWho.me),
    Message(text: "fucking typescript", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {}
}
