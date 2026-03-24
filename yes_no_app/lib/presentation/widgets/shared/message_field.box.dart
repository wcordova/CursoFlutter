import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(
        color: Colors.transparent,
      )
    );

    final inputDecoration = InputDecoration(
        hintText: "Escribe tu mensaje",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            // Handle send button press
            final textValue = textController.value.text;
            print('button: $textValue');
            textController.clear();
          },
        ),
      );

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("submit: $value");
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}