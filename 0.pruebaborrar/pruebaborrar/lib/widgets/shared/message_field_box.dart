import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    final textController = TextEditingController();

    final outlineInputBorder = UnderlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: Colors.transparent));

    final inputDecoration = InputDecoration(
        hintText: "Envia tu mensage puto",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
            onPressed: () {
              final textValue = textController.value.text;
              textController.clear();
            },
            icon: const Icon(Icons.send_outlined)));

    return TextFormField(
      onTapOutside: (_) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
